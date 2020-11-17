源代码皆由本人创作并遵循 **Mozilla 公共许可证**  
Source code licensed under the **Mozilla Public License 2.0**



# Handwritten Digit Recognition

- Database: [THE MNIST DATABASE of handwritten digits](http://yann.lecun.com/exdb/mnist/?tdsourcetag=s_pctim_aiomsg)  
- Environment: Python 3.6 / Windows 10  
- Dependency: [Numpy](https://numpy.org/)  
- Classifier: **KNN (K-Nearest Neighbor)**, Euclidean distance  
- 60000 traning samples, 10000 testing samples, 20x20 pixels in 28x28 pixels  



### Baseline

Use 20x20 pixels at center.  
选取中心位置 20x20 的像素点。

*Subsample: to 10x10 pixels.*

|       k        |    1     |  2   |    3     |  4   |  5   |  6   |  7   |  8   |  9   |  10  | ...  |
| :------------: | :------: | :--: | :------: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
|    Corrects    |   9680   | 9646 |   9719   | 9690 | 9701 | 9685 | 9691 | 9671 | 9673 | 9662 | ...  |
| **Error Rate** | **3.20** | 3.54 | **2.81** | 3.10 | 2.99 | 3.15 | 3.09 | 3.29 | 3.24 | 3.38 | ...  |
|   Subsample    |   3.82   | 4.35 |   3.75   | 3.84 | 3.65 | 3.75 | 3.81 | 3.88 | 4.01 | 3.97 | ...  |

### Center of Mass

Use 20x20 pixels around the center of mass (in between [13~15, 13~15]).  
选取质心位置 20x20 的像素点。

|       k        |    1     |  2   |    3     |  4   |    5     |  6   |  7   |  8   |  9   |  10  | ...  |
| :------------: | :------: | :--: | :------: | :--: | :------: | :--: | :--: | :--: | :--: | :--: | :--: |
|    Corrects    |   9694   | 9670 |   9721   | 9720 |   9721   | 9709 | 9704 | 9693 | 9690 | 9683 | ...  |
| **Error Rate** | **3.06** | 3.30 | **2.79** | 2.80 | **2.79** | 2.91 | 2.96 | 3.07 | 3.10 | 3.17 | ...  |
|   Subsample    |   3.84   | 4.30 |   3.69   | 3.79 |   3.77   | 3.88 | 3.77 | 3.87 | 3.79 | 3.89 | ...  |

### 1-pixel Shift

Find minimum error value within 1-pixel shift (horizontal & vertical) from the center.  
选取中心位置附近漂移 1 像素内误差函数值最小的 20x20 的像素点。

|       k        |  1   |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  10  | ...  |
| :------------: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
|    Corrects    | 9745 | 9700 | 9755 | 9760 | 9772 | 9760 | 9758 | 9756 | 9754 | 9748 | ...  |
| **Error Rate** | 2.55 | 3.00 | 2.45 | 2.40 | 2.28 | 2.40 | 2.42 | 2.44 | 2.46 | 2.52 | ...  |
