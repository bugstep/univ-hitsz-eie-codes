# Isaac Li
# 7.3.2018

import cv2
import time
import json
import numpy as np
from PIL import Image

debugging = input('Debugging? (y/N): ')
if debugging == 'y' or debugging == 'Y':
    debug = True
else:
    debug = False

while True:
    def pack(path_of_saved_image):
        copy = Image.open(path_of_saved_image).copy()
        initial = time.clock()
        test_time = time.asctime().replace(':', '-')

        def line_detection(path):
            image = cv2.imread(path)
            gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
            edges = cv2.Canny(gray, 100, 250)
            lines = cv2.HoughLinesP(edges, 1, np.pi / 180, 25, minLineLength=100, maxLineGap=50)
            hough = np.zeros(image.shape, np.uint8)
            for line in lines:
                x1, y1, x2, y2 = line[0]
                width_of_line = 50  # The width of the redrawn line.
                cv2.line(hough, (x1, y1), (x2, y2), (255, 255, 255), width_of_line)
            cv2.imwrite(path, hough)

        try:
            line_detection(path_of_saved_image)
        except:
            return 'straight'

        def cut_img(path):
            img = Image.open(path)
            img.save(fr".\experimental_data\{test_time}.jpg")

        cut_img(path_of_saved_image)

        def distance(pic1, pic2):
            def difference(image):
                re_width, re_height = 12, 5  # Resize the image.
                smaller_image = image.resize((re_width, re_height))
                gray_scale_image = smaller_image.convert("L")
                pixels, differences = list(gray_scale_image.getdata()), []
                for row in range(re_height):
                    row_start_index = row * re_width
                    for col in range(re_width - 1):
                        left_pixel_index = row_start_index + col
                        differences.append(pixels[left_pixel_index] > pixels[left_pixel_index + 1])
                return differences

            image1_difference, image2_difference = difference(pic1), difference(pic2)
            hamming_distance = 0
            while image1_difference != image2_difference:
                if image1_difference.pop() != image2_difference.pop():
                    hamming_distance += 1  # Figure up the differences.

            return hamming_distance

        pic = Image.open(path_of_saved_image)
        cases = []
        for i in range(1, 364):
            case = Image.open(rf'.\image_line_d\straight\s{i}.jpg')
            cases.append(distance(pic, case))
        min_distance_case_of_straight = min(cases)
        min_distance_case_of_straight_case = cases.index(min(cases)) + 1
        cases = []
        for i in range(1, 1242):
            case = Image.open(rf'.\image_line_d\left\l{i}.jpg')
            cases.append(distance(pic, case))
        min_distance_case_of_left = min(cases)
        min_distance_case_of_left_case = cases.index(min(cases)) + 1
        cases = []
        for i in range(1, 1380):
            case = Image.open(rf'.\image_line_d\right\r{i}.jpg')
            cases.append(distance(pic, case))
        min_distance_case_of_right = min(cases)
        min_distance_case_of_right_case = cases.index(min(cases)) + 1
        minimum = min(min_distance_case_of_left, min_distance_case_of_right, min_distance_case_of_straight)
        if minimum == min_distance_case_of_straight:
            case = 'straight'
            case_number = 'r' + str(min_distance_case_of_right_case)
        elif minimum == min_distance_case_of_left:
            case = 'left'
            case_number = 'l' + str(min_distance_case_of_left_case)
        else:
            case = 'right'
            case_number = 's' + str(min_distance_case_of_straight_case)
        final = time.clock()
        print(f"\nCase: {case},  "
              f"( Base case {case_number} )"
              f"\n(L: {min_distance_case_of_left}, "
              f"S: {min_distance_case_of_straight}, "
              f"R: {min_distance_case_of_right})"
              f"\nTime: {(final - initial)}")
        try:
            with open('experimental_data_loop.json') as f_obj:
                case_dict = json.load(f_obj)
        except FileNotFoundError:
            case_dict = {}
        response = case
        if debug:
            m = input(f'{response}走对回车,走错输入正确结果：')
            if m:
                response = m
        case_dict[f'{test_time}'] = (response, case_number[:1], final - initial)
        with open('experimental_data_loop.json', 'w') as f_obj:
            json.dump(case_dict, f_obj)
        copy.save(path_of_saved_image)
        return case


    while True:
        try:
            with open('E:\\flag.txt') as file_obj:
                sig = file_obj.read()
        except:
            pass
        else:
            if sig == '0':
                break

    c = pack('E:\\x.jpg')

    with open('E:\\PToCFlag.txt', 'w') as file_obj:
        json.dump(c, file_obj)
    while True:
        try:
            with open('E:\\flag.txt', 'w') as file_obj:
                file_obj.write('1')
        except:
            pass
        else:
            break
