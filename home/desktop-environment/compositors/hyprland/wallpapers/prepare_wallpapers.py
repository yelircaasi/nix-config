import sys
import json
from pathlib import Path
from typing import Self

import cv2


def is_within(value_a: float, value_b: float, threshold: float = 0.001) -> bool:
    return abs(value_a - value_b) < threshold


class SimpleRectangle:
    def __init__(self, top: int, right: int, bottom: int, left: int):
        self.top = top
        self.right = right
        self.bottom = bottom
        self.left = left

    @property
    def width(self) -> int:
        return self.right - self.left

    @property
    def height(self) -> int:
        return self.bottom - self.top

    @property
    def aspect_ratio(self) -> float:
        return self.width / self.height


class ConcentricRectangle:
    def __init__(self, outer: SimpleRectangle, inner: SimpleRectangle):
        self.outer = outer
        self.inner = inner


class Resolution:
    width: int
    height: int

    def rescale(self, scale_factor: float) -> "Resolution":
        return Resolution(
            int(self.width * scale_factor), int(self.height * scale_factor)
        )


class ImagePixels(SimpleRectangle):
    """ """

    pass


class Screen:
    def __init__(self, resolution: Resolution, physical: ConcentricRectangle):
        self.resolution = resolution
        self.physical = physical
        assert is_within(
            self.resolution.aspect_ratio, self.physical.inner.aspect_ratio
        ), "Aspect ratio mismatch"

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
        assert (
            pixels_per_mm - self.resolution.height / self.physical.inner.height
        ) < 0.001, "Aspect ratio mismatch"

    def perceived_resolution(self, other: "Screen") -> Resolution:
        ppmm = self.pixels_per_mm
        ppmm_other = other.pixels_per_mm
        return self.rescale(ppmm_other / ppmm)

    def get_image_scale_factor(self, desired_ppmm: float) -> float:
        """
        Get the scale factor to convert the image resolution to the desired pixels per mm.
        """
        ppmm = self.pixels_per_mm
        assert ppmm > desired_ppmm, "Current ppmm must be higher than desired ppmm."
        return desired_ppmm / self.pixels_per_mm


class Setup:
    ...

    def __init__(self):
        self._screens = []

    @classmethod
    def from_setup_info(cls, setup_info: dict) -> Self:
        return cls()

    def __getitem__(self, idx: int):
        """
        Get the screen at index idx.
        """
        return self._screens[idx]

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

    @staticmethod
    def scale_image(phys: ConcentricRectangle, res: Resolution) -> ImagePixels: ...

    def infer_coordinates(self) -> None: ...


class SimpleRectangle:
    def __init__(self, top: int, right: int, bottom: int, left: int):
        self.top = top
        self.right = right
        self.bottom = bottom
        self.left = left

    @property
    def width(self) -> int:
        return self.right - self.left

    @property
    def height(self) -> int:
        return self.bottom - self.top

    @property
    def aspect_ratio(self) -> float:
        return self.width / self.height


def process_setup(
    setup_info: Setup, anchor_bottom: float | None, anchor_left: float | None
) -> dict:
    """
    Determine the relative position within the image of each monitor in the given setup.
    """
    ...


def prepare_images(
    *,
    setup_names: list[str],
    image_name: str,
    setup_json: Path,
    image_json: Path,
    images_path: Path,
    out_path: Path,
) -> None:
    with open(setup_json) as f:
        setups = json.load(f)

    with open(image_json) as f:
        images = json.load(f)

    image_info = images[image_name]
    anchor_bottom = image_info["anchorBottom"]
    anchor_left = image_info["anchorLeft"]
    scale_factor = image_info["scaleFactor"]

    img = cv2.imread(images_path / image_info["imageName"])
    height, width = img.shape[:2]

    for setup_name in setup_names:
        setup = setups[setup_name]
        for screen_name, screen in setup.iter_screens():
            (top, right, bottom, left) = screen.infer_coordinates(
                height,
                width,
                anchor_bottom,
                anchor_left,
                scale_factor,
            )
            subimage = img[top:bottom, left:right]

            cv2.imwrite(out_path / f"{setup_name}" / f"{screen_name}.png", subimage)


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

    # prepare_images(
    #     setup_names, image_name, setup_json, image_json, image_path, out_path
    # )
    img = cv2.imread(images_path / image_info["imageName"])
    for setup_name in setup_names:
        for setup in setups[setup_name]:
            for monitor_info in setup["monitors"]:
                monitor_name = monitor_info["name"]
                cv2.imwrite(
                    out_path / f"{setup_name}" / f"{monitor_name}.png", img
                )  # subimage)
