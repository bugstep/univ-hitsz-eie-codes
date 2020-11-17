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
        logging.basicConfig(level=logging.INFO, filemode='w', filename='knn-center-of-mass-sub.txt', format='%(message)s')
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
    center = []
    offset = 0
    for i in range(num):
        x, y = np.array(struct.unpack_from('>784B', images, offset)).reshape((28, 28)), labels[i]
        r, c = [c.mean() for c in np.where(x != 0)]
        offset += struct.calcsize('>784B')
        sample.append([x, y])
        center.append([r, c])
    return sample, center


def difference(x1, x2, r1, c1, r2, c2):
    s = np.sum((x1[r1 - 10:r1 + 10:2, c1 - 10:c1 + 10:2] - x2[r2 - 10:r2 + 10:2, c2 - 10:c2 + 10:2]) ** 2)
    return s


log = Log()

log.info('Read Files')

number_of_tests = 10000
number_of_threads = 8
samples_per_thread = number_of_tests // number_of_threads
train_data, train_center = samples(training_image_file, training_label_file, 60000)
test_data, test_center = samples(test_image_file, test_label_file, 10000)

k_range = 100
count_total_lock = threading.Lock()
count_accurate_lock = threading.Lock()
count_accurate = [0] * k_range
count_total = 0

log.info('Testing')


def subprocess(start, number, total_lock, accurate_lock):
    def round(x):
        x1, x2 = x
        x1 = int(x1 + .5)
        x2 = int(x2 + .5)
        return x1, x2

    global count_accurate, count_total
    for m in range(start + 1, start + number + 1):
        test_x, test_y = test_data[m - 1]
        test_r, test_c = round(test_center[m - 1])

        predict = []
        for n in range(60000):
            train_x, train_y = train_data[n]
            train_r, train_c = round(train_center[n])
            curr_x = difference(np.array(test_x), np.array(train_x),
                                test_r, test_c, train_r, train_c)
            predict.append([curr_x, train_y])

        predict = sorted(predict, key=lambda x: x[0])

        for k in range(k_range):
            y = np.argmax(np.bincount([predict[i][1] for i in range(k + 1)]))
            result = y == test_y

            if result:
                accurate_lock.acquire()
                count_accurate[k] += 1
                accurate_lock.release()

        total_lock.acquire()
        count_total += 1
        total_lock.release()

        log.info(f'  ... {count_total} => {count_accurate}')


for t in range(number_of_threads):
    th = threading.Thread(target=subprocess,
                          args=(samples_per_thread * t, samples_per_thread, count_total_lock, count_accurate_lock,))
    th.start()

th.join()
time.sleep(100)
accuracy = list(zip(range(1, k_range + 1), count_accurate))
accuracy = sorted(accuracy, key=lambda x: x[1], reverse=True)
k_sorted = list(str(k[0]) for k in accuracy)

log.info(f'K Recommended: {", ".join(k_sorted)}')
log.info(f'Best Accuracy: {accuracy[0][1] / number_of_tests * 100}%.  '
         f'k = {accuracy[0][0]}, {accuracy[0][1]}/{number_of_tests}')
time.sleep(100)
