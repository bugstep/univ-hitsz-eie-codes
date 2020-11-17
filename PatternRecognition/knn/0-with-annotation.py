# 额，这个嘛
# 尽量写了一点注释虽然我很讨厌写 orz
# 其他几个大同小异，应该没什么大问题
#               Lmh, 9.23.2019

import struct
import logging
import numpy as np
from datetime import datetime
from multiprocessing import Process, Queue


class Log(object):
    def __init__(self):
        # 记录日志并且打印在控制台
        logging.basicConfig(level=logging.INFO, filemode='w', filename='0-with-annotation.txt', format='%(message)s')

        # 为兼容 Windows 系统
        console = logging.StreamHandler()
        console.setLevel(logging.INFO)
        formatter = logging.Formatter('%(message)s')
        console.setFormatter(formatter)
        logging.getLogger('').addHandler(console)

        # 设定 numpy 打印宽度
        np.set_printoptions(linewidth=150)

    @staticmethod
    def info(msg):
        # 写日志
        logging.info(f'{datetime.now().strftime("%b%d/%y, %H:%M:%S.%f")} - mass center: {msg}')


def samples(file_img, file_lb, num):
    # 读图像和标签。
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
        sample.append([x, y])    # [[28x28 数组], [对应标签]]
    return sample


def difference(x1, x2):
    s = np.sum((x1 - x2) ** 2)   # L2
    return s


def subprocess(q, train, test, k):
    for test_x, test_y in test:  # 对每一测试样本：
        predict = []
        for n in range(60000):   # 匹配训练集
            train_x, train_y = train[n]
            curr_x = difference(np.array(test_x),
                                np.array(train_x))
            # 记录距离和标签
            predict.append([curr_x, train_y])

        # 按距离排序
        predict = sorted(predict, key=lambda x: x[0])

        corrects = [0] * k
        for t in range(k):        # 遍历 k
            # 选取前 k 个
            y = np.argmax(np.bincount([predict[i][1] for i in range(t + 1)]))
            result = y == test_y
            if result:
                corrects[t] += 1  # 下标对应 k 的取值

        # 写数据
        q.put(corrects)


def read_data(q, k, n):
    # 前准备
    log = Log()
    log.info('Testing')
    count_total = 0
    count_corrects = [0] * k

    # 读数据
    while count_total < n:
        # 计数
        count_corrects = np.sum([count_corrects, q.get()], axis=0)
        count_total += 1
        # 记录
        log.info(f'  ... {count_total} => {count_corrects}')

    # 数据处理
    accuracy = list(zip(range(1, k + 1), count_corrects))
    accuracy = sorted(accuracy, key=lambda x: x[1], reverse=True)
    k_sorted = list(str(a[0]) for a in accuracy)

    log.info(f'K Recommended: {", ".join(k_sorted)}')
    log.info(f'Best Accuracy: {accuracy[0][1] / count_total * 100}%.  '
             f'k = {accuracy[0][0]}, {accuracy[0][1]}/{count_total}')


if __name__ == '__main__':
    training_image_file = './source/train-images.idx3-ubyte'
    training_label_file = './source/train-labels.idx1-ubyte'
    test_image_file = './source/t10k-images.idx3-ubyte'
    test_label_file = './source/t10k-labels.idx1-ubyte'

    print(f'{datetime.now().strftime("%b%d/%y, %H:%M:%S.%f")} - mass center: Read Files...')
    k_range = 20                  # 遍历 k 最大值
    number_of_tests = 10000       # 测试样本数
    number_of_processes = 10      # 进程数
    samples_each = number_of_tests // number_of_processes
    train_data = samples(training_image_file, training_label_file, 60000)
    test_data = samples(test_image_file, test_label_file, 10000)

    # 创建 Queue
    queue = Queue()
    # 构建子进程
    process = [Process(target=subprocess,
                       args=(queue, train_data, test_data[samples_each * t: samples_each * (t + 1)], k_range))
               for t in range(number_of_processes)]

    # 读取数据
    read = Process(target=read_data, args=(queue, k_range, number_of_tests))
    read.start()
    # 数据处理与写入
    for p in process:
        p.start()
    # 等待运行完毕
    for p in process:
        p.join()
    # 等待运行完毕
    read.join()
