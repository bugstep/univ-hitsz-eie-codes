import threading
import time
from datetime import datetime
import numpy as np
import logging
import struct

training_image_file = './source/train-images.idx3-ubyte'
training_label_file = './source/train-labels.idx1-ubyte'
test_image_file = './source/t10k-images.idx3-ubyte'
test_label_file = './source/t10k-labels.idx1-ubyte'


class Log(object):
    def __init__(self):
        logging.basicConfig(level=logging.INFO, filemode='w', filename='knn-1.4.txt', format='%(message)s')
        console = logging.StreamHandler()
        console.setLevel(logging.INFO)
        formatter = logging.Formatter('%(message)s')
        console.setFormatter(formatter)
        logging.getLogger('').addHandler(console)

    @staticmethod
    def info(msg):
        logging.info(f'{datetime.now().strftime("%b%d/%y, %H:%M:%S.%f")}: {msg}')


def samples(file_img, file_lb, num):
    with open(file_img, 'rb') as f:
        images = f.read()[16:]
    with open(file_lb, 'rb') as f:
        labels = f.read()[8:]

    sample = []
    offset = 0
    for i in range(num):
        x = np.array(struct.unpack_from('>784B', images, offset)).reshape((28, 28))
        offset += struct.calcsize('>784B')
        y = labels[i]
        sample.append([x, y])
    return sample


def difference(x1, x2):
    x1[x1 < 100] = 0
    x2[x2 < 100] = 0
    diff = np.nonzero(x1[4:24, 4:24].flatten() - x2[4:24, 4:24].flatten())
    dist = np.shape(diff[0])[0]
    return dist


log = Log()

log.info('Read Files')

number_of_tests = 10000
number_of_threads = 8
samples_per_thread = number_of_tests // number_of_threads
train_data = samples(training_image_file, training_label_file, 60000)
test = samples(test_image_file, test_label_file, 10000)

lock = threading.Lock()
count_accurate = 0
count_total = 0

log.info('Testing')


def subprocess(start, number, lk):
    global count_accurate, count_total
    for m in range(start + 1, start + number + 1):
        test_x, test_y = test[m - 1]
        min_x, min_y = float('inf'), 0

        for n in range(60000):
            train_x, train_y = train_data[n]
            curr_x = difference(np.array(test_x),
                                np.array(train_x))
            if curr_x < min_x:
                min_x = curr_x
                min_y = train_y

        result = min_y == test_y

        lk.acquire()
        if result:
            count_accurate += 1
        count_total += 1
        lk.release()

        log.info(f'     Sample: {m:04}: {test_y}->{min_y} = {result:1}   - {count_accurate}/{count_total}')


for t in range(number_of_threads):
    th = threading.Thread(target=subprocess, args=(samples_per_thread * t, samples_per_thread, lock,))
    th.start()

th.join()
time.sleep(8)
log.info(f'Accuracy: {count_accurate / count_total * 100}%')
time.sleep(2)
