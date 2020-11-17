import threading
import time
from datetime import datetime
import numpy as np
import logging

training_image_file = './source/train-images.idx3-ubyte'
training_label_file = './source/train-labels.idx1-ubyte'
test_image_file = './source/t10k-images.idx3-ubyte'
test_label_file = './source/t10k-labels.idx1-ubyte'


class Log(object):
    def __init__(self):
        logging.basicConfig(level=logging.INFO, filemode='w', filename='knn1.0d.txt', format='%(message)s')
        console = logging.StreamHandler()
        console.setLevel(logging.INFO)
        formatter = logging.Formatter('%(message)s')
        console.setFormatter(formatter)
        logging.getLogger('').addHandler(console)

    @staticmethod
    def info(msg):
        logging.info(f'{datetime.now().strftime("%H:%M:%S.%f")}： {msg}')


def get_training_samples():
    data = []
    for i in range(60000):
        x_pos = i * 28 * 28

        y = training_labels[i]
        x = []
        for j in [6, 9, 11, 13, 14, 15, 17, 19, 22]:
            z = []
            for k in [6, 9, 11, 13, 14, 15, 17, 19, 22]:
                z.append(training_images[x_pos + j * 28 + k])
            x.append(z)

        data.append([x, y])

    return data


def get_test_samples():
    for i in range(10000):
        x_pos = i * 28 * 28

        y = test_labels[i]
        x = []
        for j in [6, 9, 11, 13, 14, 15, 17, 19, 22]:
            z = []
            for k in [6, 9, 11, 13, 14, 15, 17, 19, 22]:
                z.append(test_images[x_pos + j * 28 + k])
            x.append(z)
        yield x, y


def difference(x1, x2):
    diff = x1 - x2
    s = np.sum(diff ** 2) / 10
    p = np.sum(np.var(diff, axis=0))
    q = np.sum(np.var(diff, axis=1))
    return s + p + q


log = Log()

log.info('Read Files')
with open(training_image_file, 'rb') as f:
    training_images = f.read()[16:]
with open(training_label_file, 'rb') as f:
    training_labels = f.read()[8:]
with open(test_image_file, 'rb') as f:
    test_images = f.read()[16:]
with open(test_label_file, 'rb') as f:
    test_labels = f.read()[8:]

log.info('Training')

number_of_tests = 10000
number_of_threads = 8
samples_per_thread = number_of_tests // number_of_threads
train_data = get_training_samples()
test = get_test_samples()

lock = threading.Lock()
count_accurate = 0
count_total = 0

log.info('Testing')


def subprocess(start, number, lk):
    global count_accurate, count_total
    for m in range(start + 1, start + number + 1):
        test_x, test_y = next(test)
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

log.info(f'Accuracy: {count_accurate / count_total * 100}%')
