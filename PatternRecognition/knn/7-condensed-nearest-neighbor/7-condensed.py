import json
import struct
import logging
import numba as nb
import numpy as np
from datetime import datetime

training_image_file = './source/train-images.idx3-ubyte'
training_label_file = './source/train-labels.idx1-ubyte'
test_image_file = './source/t10k-images.idx3-ubyte'
test_label_file = './source/t10k-labels.idx1-ubyte'


class Log(object):
    def __init__(self):
        logging.basicConfig(level=logging.INFO, filemode='w', filename='7-condensed.txt', format='%(message)s')
        console = logging.StreamHandler()
        console.setLevel(logging.INFO)
        formatter = logging.Formatter('%(message)s')
        console.setFormatter(formatter)
        logging.getLogger('').addHandler(console)

    @staticmethod
    def info(msg):
        logging.info(f'{datetime.now().strftime("%b%d/%y, %H:%M:%S.%f")} - CNN: {msg}')


def samples(file_img, file_lb, num):
    with open(file_img, 'rb') as f_obj:
        images = f_obj.read()[16:]
    with open(file_lb, 'rb') as f_obj:
        labels = f_obj.read()[8:]

    sample = []
    offset = 0
    for p in range(num):
        x = np.array(struct.unpack_from('>784B', images, offset)).reshape((28, 28))
        offset += struct.calcsize('>784B')
        y = labels[p]
        sample.append([x, y])
    return sample


@nb.njit
def difference(x1, x2):
    s = np.sum((x1 - x2) ** 2)
    return s


log = Log()

log.info('Read Files')
train_data = samples(training_image_file, training_label_file, 60000)
tmp = train_data.pop()
new_train = [[tmp[0].tolist(), tmp[1]], ]

log.info('Testing')
repeat_time = 0
repeat_flag = True

while repeat_flag:
    repeat_time += 1
    repeat_flag = False
    i = 0
    while i < len(train_data):
        test_x, test_y = train_data[i]

        predict = []
        for n in range(len(new_train)):
            train_x, train_y = new_train[n]
            curr_x = difference(np.array(test_x),
                                np.array(train_x))
            predict.append([curr_x, train_y])

        predict = sorted(predict, key=lambda x: x[0])
        predict_y = predict[0][1]
        result = predict_y == test_y

        if not result:
            repeat_flag = True
            tmp = train_data.pop(i)
            new_train.append([tmp[0].tolist(), tmp[1]])
            log.info(f'  ... Repeat {repeat_time}, {i} / {len(train_data)} + {len(new_train)}  =>  {test_y}')
        else:
            i += 1
            log.info(f'  ... Repeat {repeat_time}, {i} / {len(train_data)} + {len(new_train)}')

with open('7-condensed.json', 'w') as f:
    json.dump(new_train, f)
log.info(f'New training samples: {len(new_train)}')
