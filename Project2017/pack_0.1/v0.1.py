# Isaac Li
# 3.20.2018

# ---- Step 1. Preparation. --------------------------------------------------------------------------------------------

import time
from PIL import Image

path_of_saved_image = 'x.jpg'
copy = Image.open(path_of_saved_image).copy()

initial = time.clock()

# ---- Step 2. Line detection. -----------------------------------------------------------------------------------------

import cv2
import numpy as np

def line_detection(path):
    image = cv2.imread(path)

    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    edges = cv2.Canny(gray, 100, 250)
    lines = cv2.HoughLinesP(edges, 1, np.pi/180, 25, minLineLength=100, maxLineGap=50)

    hough = np.zeros(image.shape, np.uint8)

    for line in lines:
        x1, y1, x2, y2 = line[0]
        cv2.line(hough, (x1, y1), (x2, y2), (255, 255, 255), 50)

    cv2.imwrite(path, hough)

line_detection(path_of_saved_image)

# ---- Step 3. Cut image. ----------------------------------------------------------------------------------------------

def cut_img(path):
    img = Image.open(path)
    (x, y, w, h) = (0, 230, 640, 250)
    img = img.crop((x, y, x + w, y + h))
    img.save(path)

cut_img(path_of_saved_image)

# ---- Step 4. Calculate dHash. ----------------------------------------------------------------------------------------

def distance(pic1, pic2):
    def difference(image):
        resize_width, resize_height = 12, 5
        smaller_image = image.resize((resize_width, resize_height))
        grayscale_image = smaller_image.convert("L")
        pixels = list(grayscale_image.getdata())
        differences = []
        for row in range(resize_height):
            row_start_index = row * resize_width
            for col in range(resize_width - 1):
                left_pixel_index = row_start_index + col
                differences.append(pixels[left_pixel_index] > pixels[left_pixel_index + 1])
        return differences

    hamming_distance = 0
    image1_difference = difference(pic1)
    image2_difference = difference(pic2)
    for index, img1_pix in enumerate(image1_difference):
        img2_pix = image2_difference[index]
        if img1_pix != img2_pix:
            hamming_distance += 1
    return hamming_distance

cases, dists = [], []
for i in range(21):
    cases.append(Image.open(rf'.\base\{i}.jpg'))

pic = Image.open(path_of_saved_image)
for case in cases:
    dists.append(distance(pic, case))

min_distance_case = dists.index(min(dists))

# ---- Step 5. Data preserve. ------------------------------------------------------------------------------------------

print(f'{(min_distance_case + 9) // 10}, ({min_distance_case})')

final = time.clock()
print(f"Timer: {(final - initial)} s")

copy.save(path_of_saved_image)

# ---- Notes. ----------------------------------------------------------------------------------------------------------

"""
预测结果为 0, 1, 2, 
数值范围为 [0, 20].
得 0, [0]     ：直行；
得 1, [1, 10] ：偏左；
得 2, [11, 20]：偏右。
"""
