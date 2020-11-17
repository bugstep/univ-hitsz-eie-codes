# Isaac Li
# 8.31.2018

import os
import cv2
import time
import socket
import numpy as np
from PIL import Image
from sklearn.linear_model import LinearRegression


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

    def finish(self):
        self.stop()
        self.cap.release()

    def end(self):
        self.finish()
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
    while True:
        # ---------- Step 1. Preparation. ------------------------------------------------------------------------------

        initial = time.time()
        test_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()) + '.' + str(int(initial * 1000))[-3:]
        print(f"{'-' * len(test_time)}\n\n{test_time}\n")

        if status:
            car = Control()
            image = cv2.flip(car.get_picture(), 1)
        else:
            image = cv2.imread(file)

        # ---------- Step 2. Color detection. --------------------------------------------------------------------------

        def color_detection(im_cv2, rgb_lower, rgb_upper, proportion):
            im = cv2.cvtColor(im_cv2, cv2.COLOR_BGR2RGB)
            im_pil = Image.fromarray(im)
            r_l, g_l, b_l = rgb_lower
            r_u, g_u, b_u = rgb_upper

            w, h = im_pil.size
            img_data = im_pil.getdata()

            counter = 0
            for _, r_g_b in enumerate(img_data):
                r_i, g_i, b_i = r_g_b
                if all([r_l < r_i < r_u,
                        g_l < g_i < g_u,
                        b_l < b_i < b_u]):
                    counter += 1

            if counter > w * h * proportion:
                flag = True
            else:
                flag = False
            return flag

        orange = color_detection(image, [130, 60, 20], [170, 90, 40], 0.01)
        print('Color: orange{}Found.'.format(' ' if orange else ' not '))

        # ---------- Step 3. Line detection. ---------------------------------------------------------------------------

        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        edges = cv2.Canny(gray, 100, 250)
        lines = cv2.HoughLinesP(edges, 1, np.pi / 180, 25, minLineLength=100, maxLineGap=100)

        hough = np.zeros(image.shape, np.uint8)

        if lines is None:
            print('Line: Not found.')
            if status:
                car.straight()
                time.sleep(0.2)
                car.finish()
                continue
            else:
                break

        for line in lines:
            x1, y1, x2, y2 = line[0]
            width_of_line = 30  # The width of the redrawn line.
            cv2.line(hough, (x1, y1), (x2, y2), (255, 255, 255), width_of_line)

        img = Image.fromarray(np.uint8(hough))

        # ---------- Step 4. Crop the picture. -------------------------------------------------------------------------

        width, height = img.size
        x, y = [], []
        data = img.getdata()
        for s, rgb in enumerate(data):
            r, g, b = rgb
            if r == g == b == 255:
                yi, xi = divmod(s, width)      # 这个是       <--( x > 0 )----.----( x < 0 )-->
                x.append([width/2 - xi])       # 坐标系                       |
                y.append(yi)                   # 示意图          ( k > 0 )    y    ( k < 0 )

        linear = LinearRegression()
        linear.fit(x, y)
        k, b = linear.coef_[0], linear.intercept_
        print(f'\nk = {k:g}, b = {b:g}')

        if b >= 0:
            case = 'right' if k > 0 else 'left'
        else:
            case = 'straight'

        # ---------- Step 5. Data preserve. ----------------------------------------------------------------------------

        final = time.time()

        print(f"\nCase: {case}"
              f"\nTime: {(final - initial)}\n")

        if status:
            car.data += f'{test_time} # {case:8s}, {final - initial} seconds.'

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
            car.finish()
        else:
            break

except KeyboardInterrupt:
    if status:
        car.end()
    print('Stopped.')
    os.system('pause')
