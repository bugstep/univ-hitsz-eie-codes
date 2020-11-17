# Isaac Li
# 8.30.2018

import os
import cv2
import time
import socket
import numpy as np
from PIL import Image


class Control(object):
    def __init__(self):
        self.data = ''
        self.cap = cv2.VideoCapture("http://192.168.1.1:8080/?action=stream")

        host, port = '192.168.1.1', 2001
        self.control = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.control.connect((host, port))
        self.help = 'forward: "FF000400FF"' \
                    'left: "FF000100FF"' \
                    'right: "FF000200FF"' \
                    'backward: "FF000300FF"' \
                    'stop: "FF000000FF"' \
                    'left_speed_slow: "FF020125FF" #最后两位数值表示速度，范围0-50' \
                    'right_speed_slow: "FF020150FF"'

    def straight(self):
        forward = "FF000400FF"
        left_speed = "FF020150FF"
        right_speed = "FF020250FF"
        forward_bytes = bytes.fromhex(forward)
        left_speed_bytes = bytes.fromhex(left_speed)
        right_speed_bytes = bytes.fromhex(right_speed)
        try:
            self.control.sendall(left_speed_bytes)
            self.control.sendall(right_speed_bytes)
            self.control.sendall(forward_bytes)
        except:
            print("error: straight")

    def left(self):
        left = "FF000100FF"
        left_speed = "FF020150FF"
        right_speed = "FF020250FF"
        left_bytes = bytes.fromhex(left)
        left_speed_bytes = bytes.fromhex(left_speed)
        right_speed_bytes = bytes.fromhex(right_speed)
        try:
            self.control.sendall(left_speed_bytes)
            self.control.sendall(right_speed_bytes)
            self.control.sendall(left_bytes)
        except:
            print("error: left")

    def right(self):
        right = "FF000200FF"
        left_speed = "FF020150FF"
        right_speed = "FF020250FF"
        right_bytes = bytes.fromhex(right)
        left_speed_bytes = bytes.fromhex(left_speed)
        right_speed_bytes = bytes.fromhex(right_speed)
        try:
            self.control.sendall(left_speed_bytes)
            self.control.sendall(right_speed_bytes)
            self.control.sendall(right_bytes)
        except:
            print("error: right")

    def customize(self, left=50, right=50):
        forward = "FF000400FF"
        left_speed = f"FF0201{left}FF"
        right_speed = f"FF0202{right}FF"
        forward_bytes = bytes.fromhex(forward)
        left_speed_bytes = bytes.fromhex(left_speed)
        right_speed_bytes = bytes.fromhex(right_speed)
        try:
            self.control.sendall(left_speed_bytes)
            self.control.sendall(right_speed_bytes)
            self.control.sendall(forward_bytes)
        except:
            print("error: customize")

    def stop(self):
        stop = "FF000000FF"
        stop_bytes = bytes.fromhex(stop)
        try:
            self.control.sendall(stop_bytes)
        except:
            print("error: stop")

    def get_picture(self):
        while True:
            flag, frame = self.cap.read()
            if flag:
                break
        return cv2.flip(frame, 1)

    def end(self):
        self.stop()
        self.cap.release()
        current_time = time.asctime().replace(':', '-').replace(' ', '_')
        with open(f'data_{current_time}.log', 'w') as file_object:
            file_object.write(self.data)


print("Set model car status:\n"
      "  1. Car connected\n"
      "  2. Car not connecting\n"
      "     default: [ 1 ]")
car_status = input('  -> ')

if car_status == '2':
    print("Set image filename:\n"
          "     default: [ x.jpg ]")
    file = input('  -> ')
    if not file:
        file = 'x.jpg'
    status = False
else:
    status = True

print('\n========================\n\n'
      'Use Ctrl + C to stop.\n')

try:
    if status:
        car = Control()

    while True:
        # ---------- Step 1. Preparation. ------------------------------------------------------------------------------

        initial = time.time()
        test_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()) + ':' + str(int(initial * 1000))[-3:]
        print(f"{'-' * len(test_time)}\n\n{test_time}\n")

        if status:
            image = cv2.flip(car.get_picture(), 1)
        else:
            image = cv2.imread(file)

        # ---------- Step 2. Color detection. --------------------------------------------------------------------------

        def color_detection(im_cv2, rgb_lower, rgb_upper, proportion):
            im = cv2.cvtColor(im_cv2, cv2.COLOR_BGR2RGB)
            im_pil = Image.fromarray(im)
            im_pil.show()
            r_l, g_l, b_l = rgb_lower
            r_u, g_u, b_u = rgb_upper

            width, height = im_pil.size
            data = im_pil.getdata()

            counter = 0
            for _, rgb in enumerate(data):
                r, g, b = rgb
                if r_l < r < r_u and g_l < g < g_u and b_l < b < b_u:
                    counter += 1

            if counter > width * height * proportion:
                flag = True
            else:
                flag = False
            return flag

        orange = color_detection(image, [130, 60, 20], [170, 90, 40], 0.01)
        print('Color: orange{}Found.'.format(' ' if orange else ' not '))

        # ---------- Step 2. Line detection. ---------------------------------------------------------------------------

        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        edges = cv2.Canny(gray, 100, 250)
        lines = cv2.HoughLinesP(edges, 1, np.pi / 180, 25, minLineLength=100, maxLineGap=50)

        hough = np.zeros(image.shape, np.uint8)

        if lines is None:
            print('Line: Not found.')
            continue

        for line in lines:
            x1, y1, x2, y2 = line[0]
            width_of_line = 50  # The width of the redrawn line.
            cv2.line(hough, (x1, y1), (x2, y2), (255, 255, 255), width_of_line)

        img = Image.fromarray(np.uint8(hough))

        # ---------- Step 3. Crop the picture. -------------------------------------------------------------------------

        (x, y, w, h) = (0, 230, 640, 250)  # Set the size.
        pic = img.crop((x, y, x + w, y + h))

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

        cases = []
        case = Image.open(rf'.\image_line_d_cut\straight\s{1}.jpg')
        cases.append(distance(pic, case))
        min_distance_case_of_straight = min(cases)
        min_distance_case_of_straight_case = 1

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

        # ---------- Step 5. Data preserve. ----------------------------------------------------------------------------

        final = time.time()

        print(f"\nCase: {case},"
              f"\n     ( Base case {case_number} )"
              f"\n     (L: {min_distance_case_of_left}, "
              f"S: {min_distance_case_of_straight}, "
              f"R: {min_distance_case_of_right})\n"
              f"\nTime: {(final - initial)}\n")

        if status:
            car.data += f'{test_time}: {case:8s} ({case, case_number[:1]}), {final - initial} seconds.'

        # ---------- Step 6. Control. --------------------------------------------------------------------------

        "   若返回值为 'straight' 则直行   "
        "   若返回值为   'left'   则左转   "
        "   若返回值为  'right'   则右转   "

        if status:
            if case == 'straight':
                car.straight()
            elif case == 'left':
                car.left()
            elif case == 'right':
                car.right()
            else:
                car.stop()

            time.sleep(0.5)
            car.stop()

except KeyboardInterrupt:
    if status:
        car.end()
    print('Stopped.')
    os.system('pause')
