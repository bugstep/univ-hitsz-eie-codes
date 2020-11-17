import json
import struct
import numpy as np

def samples(file_img, file_lb, num):
    # 读图像和标签。
    with open(file_img, 'rb') as f:
        images = f.read()
    with open(file_lb, 'rb') as f:
        labels = f.read()

    x = np.array([])
    offset = 16
    for _ in range(num):
        tmp = np.array(struct.unpack_from('>784B', images, offset))
        offset += struct.calcsize('>784B')
        x = np.r_[x, tmp]
    x = x.reshape(num, 784)
    y = np.array(struct.unpack_from(f'>{num}B', labels, 8))
    return x, y


def read(file_img, file_lb, num):
    def read_img():
        with open(file_img, 'rb') as f_obj:
            images = f_obj.read()

        xs = np.array([])
        offset = 16
        for _ in range(num):
            tmp = np.array(struct.unpack_from('>784B', images, offset))
            offset += struct.calcsize('>784B')
            xs = np.r_[xs, tmp]
        xs = xs.reshape(num, 784)
        return xs

    if num == 60000 and 'train' in file_img:
        try:
            with open('train.json') as f:
                img = json.load(f)
            x = np.array(img)
        except FileNotFoundError:
            x = read_img()
            with open('train.json', 'w') as f:
                img = x.tolist()
                json.dump(img, f)

    elif num == 10000 and 't10k' in file_img:
        try:
            with open('test.json') as f:
                img = json.load(f)
            x = np.array(img)
        except FileNotFoundError:
            x = read_img()
            with open('test.json', 'w') as f:
                img = x.tolist()
                json.dump(img, f)

    else:
        x = read_img()

    with open(file_lb, 'rb') as f:
        labels = f.read()
    y = np.array(struct.unpack_from(f'>{num}B', labels, 8))
	   
    return x, y
