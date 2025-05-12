# https://realpython.com/mandelbrot-set-python/
# https://scipython.com/book/chapter-7-matplotlib/problems/p72/the-julia-set/
# https://www.geeksforgeeks.org/julia-fractal-python/
# https://www.geeksforgeeks.org/barnsley-fern-in-python/
# https://www.geeksforgeeks.org/fractal-using-spirograph-python/

import numpy as np
from PIL import Image

def mandelbrot(x, y, max_iter):
    """
    Calculates if a complex number (x, y) is part of the Mandelbrot set.
    """
    c = complex(x, y)
    z = 0
    for i in range(max_iter):
        if abs(z) > 2:
            return i
        z = z**2 + c
    return max_iter

def create_mandelbrot_image(width, height, center_x, center_y, zoom, max_iter, palette):
    """
    Creates a high-resolution Mandelbrot set image.
    """
    image = np.zeros((width, height, 3), dtype=np.uint8)
    scale = 2 / (zoom * width)
    for x in range(width):
        for y in range(height):
            real = center_x + (x - width / 2) * scale
            imag = center_y + (y - height / 2) * scale
            iterations = mandelbrot(real, imag, max_iter)
            if iterations == max_iter:
                color = palette[0]  # Color for points within the set
            else:
                # Use a color gradient based on iteration count
                color_index = iterations % len(palette)
                color = palette[color_index]
            image[y, x] = color
    return Image.fromarray(image)

# Example Usage:
width = 2000
height = 2000
center_x = -0.7436438873681
center_y = 0.1318259041837
zoom = 15000
max_iter = 100

# Choose a color palette:
palette = [(0, 0, 0), (255, 0, 0), (0, 255, 0), (0, 0, 255)]  # Black, Red, Green, Blue

# Create the image
mandelbrot_image = create_mandelbrot_image(width, height, center_x, center_y, zoom, max_iter, palette)

# Save the image:
mandelbrot_image.save("mandelbrot.png")