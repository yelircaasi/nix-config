import os
import sys
import json
from pathlib import Path
from typing import Iterable, Optional, Self

import cv2


def is_within(
    value_a: float,
    value_b: float,
    threshold: float = 0.01,
) -> bool:
    return abs(value_a - value_b) < threshold


class SimpleRectangle:
    def __init__(self, top: int, right: int, bottom: int, left: int):
        self.top = top
        self.right = right
        self.bottom = bottom
        self.left = left

    def __repr__(self):
        return f"({self.left}, {self.bottom})-->({self.right}, {self.top})"

    @property
    def width(self) -> int:
        return self.right - self.left

    @property
    def height(self) -> int:
        return self.top - self.bottom

    @property
    def aspect_ratio(self) -> float:
        return self.width / self.height


class Resolution:
    def __init__(self, width: int, height: int):
        self.width = width
        self.height = height

    def rescale(self, scale_factor: float) -> "Resolution":
        return Resolution(
            int(self.width * scale_factor), int(self.height * scale_factor)
        )

    @property
    def aspect_ratio(self) -> float:
        return self.width / self.height

    def __repr__(self):
        return f"{self.width}x{self.height}"

    @property
    def pair(self) -> tuple[int, int]:
        return (self.width, self.height)


class ImagePixels(SimpleRectangle):
    """ """

    pass


class Screen:
    def __init__(
        self,
        name: str,
        resolution: Resolution,
        physical: SimpleRectangle,
        relative: SimpleRectangle,
    ):
        self.name = name
        self.resolution = resolution
        self.physical = physical
        self.relative = relative
        assert is_within(
            self.resolution.aspect_ratio, self.physical.aspect_ratio
        ), (
            f"Aspect ratio mismatch: {self.resolution.aspect_ratio} vs "
            f"{self.physical.aspect_ratio}"
        )

    def __repr__(self):
        return (
            "Screen:\n"
            f"  resolution: {repr(self.resolution)}\n"
            f"  physical: {repr(self.physical)}\n"
            f"  relative:{repr(self.relative)}"
        )

    @classmethod
    def from_monitor_info(
        cls, monitor: dict, previous: Optional["Screen"] = None
    ) -> Self:
        offset = (
            (previous.relative.right + (monitor["gapLeft"] or 0))
            if previous
            else 0
        )

        return cls(
            monitor["name"],
            Resolution(
                monitor["pixelWidth"],
                monitor["pixelHeight"],
            ),
            physical=SimpleRectangle(
                top=monitor["physHeight"],
                right=monitor["physWidth"],
                bottom=0,
                left=0,
            ),
            relative=SimpleRectangle(
                top=monitor["gapBottom"] + monitor["physHeight"],
                right=offset + monitor["physWidth"],
                bottom=monitor["gapBottom"],
                left=offset,
            ),
        )

    @property
    def width(self) -> int:
        return self.physical.inner.width

    @property
    def height(self) -> int:
        return self.physical.inner.height

    @property
    def aspect_ratio(self) -> float:
        return self.physical.inner.width / self.physical.inner.height

    @property
    def pixels_per_mm(self) -> float:
        pixels_per_mm = self.resolution.width / self.physical.inner.width
        ratio = self.resolution.height / self.physical.inner.height
        assert (pixels_per_mm - ratio) < 0.001, "Aspect ratio mismatch"

    def perceived_resolution(self, other: "Screen") -> Resolution:
        ppmm = self.pixels_per_mm
        ppmm_other = other.pixels_per_mm
        return self.rescale(ppmm_other / ppmm)

    def get_image_scale_factor(self, desired_ppmm: float) -> float:
        """
        Get the scale factor to convert the image resolution to the desired
          pixels per mm.
        """
        ppmm = self.pixels_per_mm
        assert ppmm > desired_ppmm, (
            "Current ppmm must be higher than desired ppmm."
        )
        return desired_ppmm / self.pixels_per_mm


class Setup:
    ...

    def __init__(self, screens: Iterable[Screen]):
        self._screens = screens
        bottom = self.bottom
        if bottom != 0:
            self.remove_bottom(bottom)
        left = self.left
        if left != 0:
            self.remove_left(left)

    def __repr__(self):
        return "\n".join(map(repr, self._screens))

    @classmethod
    def from_setup_info(cls, monitors: list[dict]) -> Self:
        previous: Screen | None = None
        screens = []
        for monitor_info in monitors:
            scr = Screen.from_monitor_info(monitor_info, previous)
            screens.append(scr)
            previous = scr
        return cls(screens)

    def remove_bottom(self, mm: int) -> None:
        for scr in self._screens:
            scr.relative.bottom -= mm
            scr.relative.top -= mm

    def remove_left(self, mm: int) -> None:
        for scr in self._screens:
            scr.relative.left -= mm
            scr.relative.right -= mm

    @property
    def bottom(self) -> int:
        return min(map(lambda s: s.relative.bottom, self._screens))

    @property
    def left(self) -> int:
        return min(map(lambda s: s.relative.left, self._screens))

    @property
    def right(self) -> int:
        return max(map(lambda s: s.relative.right, self._screens))

    @property
    def top(self) -> int:
        return max(map(lambda s: s.relative.top, self._screens))

    def __getitem__(self, idx: int):
        """
        Get the screen at index idx.
        """
        return self._screens[idx]

    def iter_screens(self):
        """
        Return a list of (name: str, screen: Screen)
        """
        return iter([(s.name, s) for s in self._screens])

    @staticmethod
    def remove_shared_bottom(screens: list[Screen]) -> list[Screen]:
        """
        Remove the shared bottom of the screens.
        """
        min_bottom = min(
            map(
                lambda s: s.physical.outer.bottom,
                filter(lambda s: (s.above is None), screens),
            )
        )
        return [s.shift_y(-min_bottom) for s in screens if (s.above is None)]

    @staticmethod
    def remove_shared_left(screens: list[Screen]) -> list[Screen]:
        """
        Remove the shared left_margin of the screens.
        """
        min_left = min(
            map(
                lambda s: s.physical.outer.bottom,
                filter(lambda s: (s.above is None), screens),
            )
        )
        return [s.shift_y(-min_left) for s in screens if (s.above is None)]

        return screens

    def cv2_coordinates(
        self,
        img_w: int,
        img_h: int,
        anchor_left: float,
        anchor_bottom: float,
        keep_resolution: bool,
    ) -> list[tuple[str, tuple[int, int, int, int], tuple[int, int]]]:
        """
        keep_resolution is currently ignored, as it is more complicated.
        """
        assert self.bottom == self.left == 0
        height = self.top
        width = self.right
        ar = width / height
        img_ar = img_w / img_h

        anchor_top = 1.0 - anchor_bottom

        if img_ar < ar:
            print("The limiting dimension is image width.")
            mm_to_pix = img_w / width
            surplus_h = int(img_h - height * mm_to_pix)
            shift_w, shift_h = 0, anchor_top * surplus_h

        else:
            print("The limiting dimension is image height.")
            mm_to_pix = img_h / height
            surplus_w = img_w - width * mm_to_pix
            shift_w, shift_h = anchor_left * surplus_w, 0

        coords = []
        for name, scr in self.iter_screens():
            rel = scr.relative
            top = int((height - rel.top) * mm_to_pix + shift_h)
            right = int(rel.right * mm_to_pix + shift_w)
            bottom = int((height - rel.bottom) * mm_to_pix + shift_h)
            left = int(rel.left * mm_to_pix + shift_w)

            coords.append(
                (name, (top, right, bottom, left), scr.resolution.pair)
            )

        return coords

    @property
    def aspect_ratio(self) -> float:
        assert self.bottom == self.left == 0
        return self.right / self.top


def cut_and_resize(img, coords, w, h):
    top, right, bottom, left = coords
    new_img = cv2.resize(
        img[top:bottom, left:right], (w, h), interpolation=cv2.INTER_LANCZOS4
    )
    return new_img


def prepare_images(
    setup_names: list[str],
    image_name: str,
    setups: dict,
    image_info: dict,
    images_path: Path,
    out_path: Path,
) -> None:
    anchor_bottom = image_info["alignmentFromBottom"]
    anchor_left = image_info["alignmentFromLeft"]
    scale_factor = image_info["scaleFactor"]
    keep_resolution = scale_factor is None
    print(anchor_bottom)
    print(anchor_left)
    print(keep_resolution)

    img = cv2.imread(images_path / image_info["imageName"])
    height, width = img.shape[:2]

    for setup_name in setup_names:
        setup = Setup.from_setup_info(setups[setup_name]["monitors"])

        for name, coords, res in setup.cv2_coordinates(
            width, height, anchor_left, anchor_bottom, keep_resolution
        ):
            subimage = cut_and_resize(img, coords, *res)
            os.makedirs(out_path / setup_name, exist_ok=True)
            cv2.imwrite(out_path / setup_name / f"{name}.png", subimage)


if __name__ == "__main__":
    args = sys.argv[1:]
    setup_names = args[0].split(",")
    image_name = args[1]
    setup_json = Path(args[2])
    image_json = Path(args[3])
    images_path = Path(args[4])
    out_path = Path(args[5])

    with open(setup_json, "r") as f:
        setups = json.load(f)

    with open(image_json, "r") as f:
        image_info = json.load(f)[image_name]

    prepare_images(
        setup_names, image_name, setups, image_info, images_path, out_path
    )
