# Isaac Li
# 7.4.2018

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
        """
        Read the image from path, and give back the case number.
        :param path_of_saved_image: location of the saved image.
        :return: integer representing three different cases.
        """

        # ---------- Step 1. Preparation. ------------------------------------------------------------------------------

        copy = Image.open(path_of_saved_image).copy()

        initial = time.clock()
        test_time = time.asctime().replace(':', '-')

        # ---------- Step 2. Line detection. ---------------------------------------------------------------------------

        def line_detection(path):
            """
            Line detection using cv2, and then save (black-and-white picture).
            :param path: location of ordinary image.
            :return: None.
            """
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
            return 'NotFound'

        # ---------- Step 3. Crop the picture. -------------------------------------------------------------------------

        def cut_img(path):
            """
            Crop the picture; only the lower half remains.
            :param path: location of the picture saved at Step 2.
            :return: None.
            """
            img = Image.open(path)
            (x, y, w, h) = (0, 230, 640, 250)  # Set the size.
            img = img.crop((x, y, x + w, y + h))
            img.save(path)
            "Added in v0.2_alpha"
            img.save(fr".\experimental_data\{test_time}.jpg")
            "/ Added in v0.2_alpha"

        cut_img(path_of_saved_image)

        # ---------- Step 4. Calculate dHash. --------------------------------------------------------------------------

        def distance(pic1, pic2):
            """
            Check the hamming distance of the two given pictures.
            :param pic1: Image object of picture 1.
            :param pic2: Image object of picture 2.
            :return: integer (hamming distance).
            """

            def difference(image):
                """
                Calculate the difference.
                :param image: Image object.
                :return: List of boolean value of "differ". (eg. [False, True, False, ...])
                """
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

        "Modified in v0.3_alpha"

        # "Modified in v0.2_alpha"
        #
        # # cases, dists = [], []
        # # for i in range(21):
        # #     cases.append(Image.open(rf'.\base\{i}.jpg'))
        # #
        # # pic = Image.open(path_of_saved_image)
        # # for case in cases:
        # #     dists.append(distance(pic, case))  # 20 basic cases.
        # #
        # # min_distance_case = dists.index(min(dists))
        #
        # pic = Image.open(path_of_saved_image)
        # straight = Image.open(r'.\base\0.jpg')
        # distance_straight = distance(pic, straight)
        #
        # if not distance_straight:
        #     min_distance_case = 0
        # else:
        #     cases = []
        #     for i in range(1, 21):
        #         case = Image.open(rf'.\base\{i}.jpg')
        #         cases.append(distance(pic, case))
        #     min_distance_case = cases.index(min(cases)) + 1
        #
        # "/ Modified in v0.2_alpha"

        pic = Image.open(path_of_saved_image)

        cases = []
        case = Image.open(rf'.\image_line_d_cut\straight\s{1}.jpg')
        cases.append(distance(pic, case))
        min_distance_case_of_straight = min(cases)
        min_distance_case_of_straight_case = cases.index(min(cases)) + 1

        cases = []
        for i in range(1, 1203):
            case = Image.open(rf'.\image_line_d_cut\left\l{i}.jpg')
            cases.append(distance(pic, case))
        min_distance_case_of_left = min(cases)
        min_distance_case_of_left_case = cases.index(min(cases)) + 1

        cases = []
        for i in range(1, 1374):
            case = Image.open(rf'.\image_line_d_cut\right\r{i}.jpg')
            cases.append(distance(pic, case))
        min_distance_case_of_right = min(cases)
        min_distance_case_of_right_case = cases.index(min(cases)) + 1

        minimum = min(min_distance_case_of_left, min_distance_case_of_right, min_distance_case_of_straight)
        if minimum == min_distance_case_of_right:
            case = 'right'
            case_number = 'r' + str(min_distance_case_of_right_case)
        elif minimum == min_distance_case_of_left:
            case = 'left'
            case_number = 'l' + str(min_distance_case_of_left_case)
        else:
            case = 'straight'
            case_number = 's' + str(min_distance_case_of_straight_case)

        "/ Modified in v0.3_alpha"

        # ---------- Step 5. Data preserve. ----------------------------------------------------------------------------

        final = time.clock()

        "Modified in v0.3_alpha"

        print(f"\nCase: {case},  "
              f"( Base case {case_number} )"
              f"\n(L: {min_distance_case_of_left}, "
              f"S: {min_distance_case_of_straight}, "
              f"R: {min_distance_case_of_right})"
              f"\nTime: {(final - initial)}")

        "/ Modified in v0.3_alpha"
        "Added in v0.2_alpha"

        try:
            with open('experimental_data.json') as f_obj:
                case_dict = json.load(f_obj)
        except FileNotFoundError:
            case_dict = {}

        case_dict[f'{test_time}'] = (case_number, final - initial)

        with open('experimental_data.json', 'w') as f_obj:
            json.dump(case_dict, f_obj)

        "/ Added in v0.2_alpha"

        copy.save(path_of_saved_image)

        # ---------- Step 6. Returning value. --------------------------------------------------------------------------

        """""""""""""""""""""""""""""
        " 若返回 'straight' 则需直行  "
        " 若返回 'left'     则需左转  "
        " 若返回 'right'    则需右转  "
        """""""""""""""""""""""""""""

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
