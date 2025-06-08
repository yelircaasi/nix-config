"""
Look at:  


This script is used to create a wallpaper for a multi-monitor setup.

It takes an image and a configuration file as input, and outputs the cropped images for each monitor.
"""

import sys
from typing import Self

import numpy as np
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
            int(self.width * scale_factor),
            int(self.height * scale_factor)
        )

class ImagePixels(SimpleRectangle):
    """  """
    pass


class Screen:
    def __init__(self, resolution: Resolution, physical: ConcentricRectangle):
        self.resolution = resolution
        self.physical = physical
        assert is_within(self.resolution.aspect_ratio, self.physical.inner.aspect_ratio), "Aspect ratio mismatch"

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
        assert (pixels_per_mm - self.resolution.height / self.physical.inner.height) < 0.001, "Aspect ratio mismatch"

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
    def read_setup_info(cls, setup_info_path) -> Self:
        ...
        


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
        min_bottom = min(map(lambda s: s.physical.outer.bottom, filter(lambda s: (s.above is None), screens)))
        return [s.shift_y(-min_bottom) for s in screens if (s.above is None)]

    @staticmethod
    def remove_shared_left(screens: list[Screen]) -> list[Screen]:
        """
        Remove the shared left_margin of the screens.
        """
        min_left = min(map(lambda s: s.physical.outer.bottom, filter(lambda s: (s.above is None), screens)))
        return [s.shift_y(-min_left) for s in screens if (s.above is None)]
        
        return screens

    @staticmethod
    def scale_image(phys: ConcentricRectangle, res: Resolution) -> ImagePixels:
        ...

    def infer_coordinates(self) -> None:
        ...

setup = Setup.read_setup_info("home-triple-olivia.json")
screens = []
desired_ppmm = min(map(Screen.pixels_per_mm, screens))
highest_ppmm_screen = max(screens, key=lambda s: s.pixels_per_mm)

# TODO: refactor into .rescaled(...)
perceived_wrt_highest_ppmm = map(lambda s: s.rescale(s.perceived_resolution()), screens)

setup_for_image = setup.rescaled(highest_ppmm_screen)
image_coordinates = setup_for_image.coordinates
scale_factors = screens.image_scale_factors



"""
Steps:

1. Identify total height and width
2. Identify sub-region of image (if close to desired size) or rescale image
3. 

"""

bottom_0 = 28
bottom_1 = 73
bottom_2 = 73

width_0 = 300
width_1 = 597
width_2 = 597

height_0 = 190
height_1 = 336
height_2 = 336

right_0 = 6
right_1 = 24

left_1 = 24
left_2 = 24

gap_1 = -24
gap_2 = 0

bottom_left_0 = (0, bottom_0)
top_right_0 =   (width_0, bottom_0 + height_0)
bottom_left_1 = (width_0 + right_0 + gap_1 + left_1, bottom_1)
top_right_1 =   (width_0 + right_0 + gap_1 + left_1 + width_1, bottom_1 + height_1)
bottom_left_2 = (width_0 + right_0 + gap_1 + left_1 + width_1 + right_1 + gap_2 + left_2, bottom_2)
top_right_2 =   (width_0 + right_0 + gap_1 + left_1 + width_1 + right_1 + gap_2 + left_2 + width_2, bottom_2 + height_2)

print(bottom_left_0, top_right_0)
print(bottom_left_1, top_right_1)
print(bottom_left_2, top_right_2)


def check_args():
    if len(sys.argv) != 4:
        print("Usage: python make_wallpaper.py <image_path> <config_path> <output_path>")
        sys.exit(1)

if __name__ == "__main__":
    check_args()
    setup = Setup.read_setup_info(sys.argv[2])
    image_folder = cv2.imread(sys.argv[1])
    setup.infer_coordinates(image_folder)
    setup.save_subimages(sys.argv[3])
    print("Saved subimages and image information to", sys.argv[3])


    #------------------------------------------------
    # Read the image
    image = cv2.imread("home-triple-olivia.png")

    # Crop the image
    cropped_image_0 = image[bottom_left_0[1]:top_right_0[1], bottom_left_0[0]:top_right_0[0]]
    cropped_image_1 = image[bottom_left_1[1]:top_right_1[1], bottom_left_1[0]:top_right_1[0]]
    cropped_image_2 = image[bottom_left_2[1]:top_right_2[1], bottom_left_2[0]:top_right_2[0]]

    # Save the cropped images
    cv2.imwrite("cropped_image_0.png", cropped_image_0)
    cv2.imwrite("cropped_image_1.png", cropped_image_1)
    cv2.imwrite("cropped_image_2.png", cropped_image_2)


# SCRATCH =======================================================
import cv2

# Load the ultra-large image
img = cv2.imread("your_ultra_large_wallpaper.jpg", cv2.IMREAD_COLOR)

# Resize to 2560x1440 using Lanczos interpolation
resized = cv2.resize(img, (2560, 1440), interpolation=cv2.INTER_LANCZOS4)

# Save the downscaled image
cv2.imwrite("wallpaper_2560x1440.jpg", resized)

# Apply a gentle sharpening kernel
sharpen_kernel = np.array([[0, -1, 0],
                           [-1, 5,-1],
                           [0, -1, 0]])
sharpened = cv2.filter2D(resized, -1, sharpen_kernel)

cv2.imwrite("wallpaper_2560x1440_sharpened.jpg", sharpened)