Source code licensed under the **Mozilla Public License 2.0**  <sub>源码遵循 **Mozilla 公共许可证**</sub>

<br />

# Handwritten Digit Recognition <sub>手写数字识别</sub>

### General <sub>概要</sub>

- **Database:** [MNIST handwritten digit database](http://yann.lecun.com/exdb/mnist/?tdsourcetag=s_pctim_aiomsg)  <sub> **数据集**：[MNIST](http://yann.lecun.com/exdb/mnist/?tdsourcetag=s_pctim_aiomsg)</sub>  

    - 60000 traning samples, 10000 testing samples  
    <sup> 60000 训练样本，10000 测试样本</sup>  

    - 20x20 pixel box centered in 28x28 pixel image by center of mass  
      <sup> 20x20 像素按重心居中于 28x28 像素中</sup>

    - Pixel values are 0<sup> white</sup> to 255<sup> black</sup>  
      <sup> 像素点的值为 0<sup> 白</sup> 到 255<sup> 黑</sup></sup>  
- **Environment:** Python 3.6 / Windows 10  <sub> **环境**：Python 3.6 / Windows 10</sub>

- **Dependency:** [Numpy](https://numpy.org/)  <sub> **依赖库**：[Numpy](https://numpy.org/)</sub>

- **Classifier:** **KNN (K-Nearest Neighbor)**, Euclidean distance  <sub> **分类器**：**K近邻**，欧氏距离</sub>

<br />

### Centered by Bounding Box <sub> 以字符边界划分</sub> <sup>`1-bounding-box.py`</sup>

Size: 20x20 pixels  <sub>尺寸： 20x20 像素</sub>

|       k        |    1     |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  10  | ...  |
| :------------: | :------: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
|    Corrects    |   9636   | 9555 | 9616 | 9596 | 9611 | 9603 | 9592 | 9582 | 9585 | 9565 | ...  |
| **Error Rate** | **3.64** | 4.45 | 3.84 | 4.04 | 3.89 | 3.97 | 4.08 | 4.18 | 4.15 | 4.35 | ...  |

<br />

### Centered by Center of Mass <sub> 以字符重心划分</sub> <sup>`2-mass-center.py`</sup> <sub>*Baseline*</sub>

Preprocessing: none  <sub>预处理：无</sub>

|       k        |  1   |  2   |    3     |  4   |  5   |  6   |  7   |  8   |  9   |  10  | ...  |
| :------------: | :--: | :--: | :------: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
|    Corrects    | 9691 | 9627 |   9705   | 9682 | 9688 | 9677 | 9694 | 9670 | 9659 | 9665 | ...  |
| **Error Rate** | 3.09 | 3.73 | **2.95** | 3.18 | 3.12 | 3.23 | 3.06 | 3.30 | 3.41 | 3.35 | ...  |

<br />

### 1-Pixel Shift <sub> 1 像素漂移</sub> <sup>`3-1px-shift.py`</sup>

Centered by center of mass  <sub> 以字符重心划分</sub>

Minimum distance within 1-pixel shift <sup>Notice: 26x26 px. used</sup>  <sub>偏移 1 像素内的最小距离 <sup>注：使用了 26x26 像素</sup></sub>

|       k        |  1   |  2   |  3   |  4   |  5   |  6   |    7     |  8   |  9   |  10  | ...  |
| :------------: | :--: | :--: | :--: | :--: | :--: | :--: | :------: | :--: | :--: | :--: | :--: |
|    Corrects    | 9730 | 9688 | 9754 | 9749 | 9754 | 9755 |   9758   | 9746 | 9748 | 9741 | ...  |
| **Error Rate** | 2.70 | 3.12 | 2.46 | 2.51 | 2.46 | 2.45 | **2.42** | 2.54 | 2.52 | 2.59 | ...  |

*Cons: Inefficient  <sub> 缺点：效率低</sub>*

<br />

### Weighted Vote (-1 / d) <sub> 加权投票（-1 / d）</sub> <sup>`4-weighted-reciprocal.py`</sup>

Centered by center of mass  <sub> 以字符重心划分</sub>

|       k        |  1   |  2   |    3     |  4   |  5   |  6   |  7   |  8   |  9   |  10  | ...  |
| :------------: | :--: | :--: | :------: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
|    Corrects    | 9691 | 9691 |   9717   | 9715 | 9691 | 9709 | 9700 | 9705 | 9676 | 9685 | ...  |
| **Error Rate** | 3.09 | 3.09 | **2.83** | 2.85 | 3.09 | 2.91 | 3.00 | 2.95 | 3.24 | 3.15 | ...  |
<br />

### Weighted Vote (exp(-d² / 2)) <sub> 加权投票（exp(-d² / 2)）</sub> <sup>`5-weighted-exponential.py`</sup>

Centered by center of mass  <sub> 以字符重心划分</sub>

|       k        |  1   |  2   |  3   |    4     |  5   |  6   |  7   |  8   |  9   |  10  | ...  |
| :------------: | :--: | :--: | :--: | :------: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
|    Corrects    | 9691 | 9691 | 9709 |   9717   | 9700 | 9711 | 9704 | 9709 | 9698 | 9700 | ...  |
| **Error Rate** | 3.09 | 3.09 | 2.91 | **2.83** | 3.00 | 2.81 | 2.96 | 2.91 | 3.02 | 3.00 | ...  |

