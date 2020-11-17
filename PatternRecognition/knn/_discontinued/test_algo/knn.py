import read_data
import logging
import numpy as np
import numba as nb
from datetime import datetime


class Log(object):
    def __init__(self, mode='w'):
        # 记录日志并且打印在控制台
        logging.basicConfig(level=logging.INFO, filemode=mode, filename='knn.txt', format='%(message)s')

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
        logging.info(f'{datetime.now().strftime("%b%d/%y, %H:%M:%S.%f")}: {msg}')


@nb.njit()
def near(x1, x2, y_, k_):
    # 欧氏距离 L2
    dist = np.sum((x1 - x2) ** 2, axis=-1)
    # dist = np.argsort(dist, axis=1)
    for j in range(dist.shape[0]):
        dist[j, :] = np.argsort(dist[j, :])
        dist[j, :k_] = np.array([y_[int(index)] for index in dist[j, :k_]])
    return dist


if __name__ == '__main__':
    training_image_file = './source/train-images.idx3-ubyte'
    training_label_file = './source/train-labels.idx1-ubyte'
    test_image_file = './source/t10k-images.idx3-ubyte'
    test_label_file = './source/t10k-labels.idx1-ubyte'

    k_range = 20                             # 遍历 k 最大值
    train_set = 60000                        # 训练集大小
    test_set = 10000                         # 数据集大小
    memory_limit = 25                        # 单次运算样本个数（内存限制）

    log = Log()
    log.info('Read Files...')
    train_x, train_y = read_data.read(training_image_file, training_label_file, train_set)
    test_x, test_y = read_data.read(test_image_file, test_label_file, test_set)

    log.info('Testing...')
    count_total = 0
    count_corrects = np.zeros(k_range)

    for i in range(0, test_x.shape[0], memory_limit):
        nearest = near(test_x[i:i + memory_limit, None, :], train_x[None, :, :], train_y, k_range)[:, :k_range]

        for neighbor, true_y in zip(nearest, test_y[i:i + memory_limit]):
            corrects = [0] * k_range
            for t in range(k_range):           # 遍历 k
                # 选取前 k 个
                predict_y = np.argmax(np.bincount(neighbor[:t + 1].astype(int)))
                if predict_y == true_y:
                    corrects[t] = 1      # 下标对应 k 的取值
            # 计数
            count_total += 1
            count_corrects += corrects
            log.info(f'  ... {count_total} => {count_corrects}')

    accuracy = list(zip(range(1, k_range + 1), count_corrects))
    accuracy = sorted(accuracy, key=lambda x: x[1], reverse=True)
    k_sorted = list(str(a[0]) for a in accuracy)

    log.info(f'K Recommended: {", ".join(k_sorted)}')
    log.info(f'Best Accuracy: {accuracy[0][1] / count_total * 100}%.  '
             f'k = {accuracy[0][0]}, {accuracy[0][1]}/{count_total}')

