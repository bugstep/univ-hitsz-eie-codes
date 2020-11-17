import read_data
import time
import logging
import numpy as np
import numba as nb
from datetime import datetime
from multiprocessing import Process, Queue


class Log(object):
    def __init__(self, mode='w'):
        # 记录日志并且打印在控制台
        logging.basicConfig(level=logging.INFO, filemode=mode, filename='knn_m.txt', format='%(message)s')

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


def subprocess(q, k, m, train_x, train_y, test_x, test_y):
    for i in range(0, test_x.shape[0], m):
        nearest = near(test_x[i:i + m, None, :], train_x[None, :, :], train_y, k)[:, :k]

        for neighbor, true_y in zip(nearest, test_y[i:i + m]):
            corrects = [0] * k
            for t in range(k):           # 遍历 k
                # 选取前 k 个
                predict_y = np.argmax(np.bincount(neighbor[:t + 1].astype(int)))
                if predict_y == true_y:
                    corrects[t] = 1      # 下标对应 k 的取值

            q.put(corrects)
            time.sleep(0.01)


def read(q, k, n):
    log = Log('a')
    log.info('Testing')
    count_total = 0
    count_corrects = np.zeros(k)

    # 读数据
    while count_total < n:
        count_corrects += q.get()
        count_total += 1
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

    k_range = 20                            # 遍历 k 最大值
    train_set = 60000                       # 训练集大小
    test_set = 10000                        # 数据集大小
    number_of_processes = 5                 # 子进程数
    memory_limit = 5                        # 单次运算样本个数（内存限制）

    st = Log()
    st.info('Read Files...')
    train_x_, train_y_ = read_data.read(training_image_file, training_label_file, train_set)
    test_x_, test_y_ = read_data.read(test_image_file, test_label_file, test_set)
    samples_each = test_set // number_of_processes

    # 创建 Queue
    queue = Queue()
    # 构建子进程
    process = [Process(target=subprocess,
                       args=(queue, k_range, memory_limit, train_x_, train_y_,
                             test_x_[samples_each * t: samples_each * (t + 1)],
                             test_y_[samples_each * t: samples_each * (t + 1)]))
               for t in range(number_of_processes)]

    # 读取数据
    out = Process(target=read, args=(queue, k_range, test_set))
    out.start()
    # 数据处理与写入
    for p in process:
        p.start()
    # 等待运行完毕
    for p in process:
        p.join()
    # 等待运行完毕
    out.join()
