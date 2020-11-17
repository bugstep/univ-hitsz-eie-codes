import cv2
import numpy as np


def line_detection(name):
    path = r'H:\Programming\Python\Projects\2018\Autopilot\pack0.3\image_origin\{}.jpg'.format(name)
    try:
        image = cv2.imread(path)

        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        edges = cv2.Canny(gray, 100, 250)
        lines = cv2.HoughLinesP(edges, 1, np.pi/180, 25, minLineLength=100, maxLineGap=50)

        hough = np.zeros(image.shape, np.uint8)

        for line in lines:
            x1, y1, x2, y2 = line[0]
            cv2.line(hough, (x1, y1), (x2, y2), (255, 255, 255), 50)
    except:
        return

    path = fr'H:\Programming\Python\Projects\2018\Autopilot\pack0.3\image_line\{name}.jpg'
    cv2.imwrite(path, hough)


for i in range(1, 3461):
    line_detection(f'{i}')
    print(i)
