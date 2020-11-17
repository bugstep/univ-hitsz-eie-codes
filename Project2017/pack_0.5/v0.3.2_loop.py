# Isaac Li
# 7.5.2018

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
        return


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
