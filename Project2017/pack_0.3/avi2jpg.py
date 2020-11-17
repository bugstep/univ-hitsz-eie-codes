import cv2
s = 1

for x in range(1, 6):
    vc = cv2.VideoCapture(fr'H:\Programming\Python\Projects\2018\Autopilot\pack0.3\videos\VideoRecord{x}.avi')
    c, timeF = 1, 1
    if vc.isOpened():
        r, frame = vc.read()
    else:
        r = False

    while r:
        r, frame = vc.read()
        print(c)
        if c % timeF == 0:
            path = r'H:\Programming\Python\Projects\2018\Autopilot\image\{}.jpg'.format(s)
            s += 1
            cv2.imwrite(path, frame)
        c = c + 1
        cv2.waitKey(1)
    vc.release()
