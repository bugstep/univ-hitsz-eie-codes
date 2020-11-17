### 写在前面

源代码皆由本人创作并遵循 **Mozilla 公共许可证**  
Source code licensed under the **Mozilla Public License 2.0**

> 再次强调此协议*部分*要求：
> 1. 被许可方可以修改项目
> 1. 被许可方**必须提供**引用说明
> 1. 被许可方可以根据不同条款重新发布衍生作品
> 1. 被许可方**不得重新许可** MPL 许可的资源
> 1. 被许可方必须将其衍生作品与 MPL 许可的**源代码**一起分发

<br />

# Handwritten Digit Recognition

- Database: [THE MNIST DATABASE of handwritten digits](http://yann.lecun.com/exdb/mnist/?tdsourcetag=s_pctim_aiomsg)
- Environment: Python 3.6 / Windows 10
- Dependency: [Numpy](https://numpy.org/)
- Classifier: **KNN (K-Nearest Neighbor)**

- 60000 traning samples, 10000 testing samples, 20x20 pixels in 28x28 pixels

- **Error Rate**: 

  - **3.82%** <sup> `knn-1.0s.py`</sup>

    (9618/10000/60000)  `k = 1, Euclidean distance`

    Processing: subsampling to 10x10 pixels

  - **3.09%** <sup> `knn-1.1.py`</sup>   ***Baseline***

    (9691/10000/60000)  `k = 1, Euclidean distance`
    
  - **2.91%** <sup> `knn-1.2min.py`</sup>, ~~**5.34%**~~ <sup> `knn-1.2sum.py`</sup>
  
    (9709/10000/60000)  `k = 1, Euclidean distance`
  
    Processing: 2-pixel shift (horizontal), crop to 20x20 pixels
    
  - **2.55%** <sup> `knn-1.3.py`</sup>
  
    (9745/10000/60000)  `k = 1, Euclidean distance`
  
    Processing: 1-pixel shift (horizontal & vertical), crop to 20x20 pixels
  
  - ~~**18.3%**~~ <sup> `knn-1.4.py`</sup>
  
    (8170/10000/60000)  `k = 1, Hamming distance`
  
  - **2.99%** <sup> `knn-1.5.py`</sup>
  
    (9701/10000/60000)  `k = 5, Euclidean distance`
    
  - **2.28%** <sup> `knn-1.6.py`</sup>
  
    (9772/10000/60000) `k = 5, Euclidean distance`
  
    Processing: 1-pixel shift (horizontal & vertical), crop to 20x20 pixels
  
    |  k   |  1   |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  10  | ...  |
    | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
    |  n   | 9745 | 9700 | 9755 | 9760 | 9772 | 9760 | 9758 | 9756 | 9754 | 9748 | ...  |
    |  %   | 2.55 | 3.00 | 2.45 | 2.40 | 2.28 | 2.40 | 2.42 | 2.44 | 2.46 | 2.52 | ...  |
  

 <br />

# 手写数字识别

- 数据集：[THE MNIST DATABASE of handwritten digits](http://yann.lecun.com/exdb/mnist/?tdsourcetag=s_pctim_aiomsg)
- 测试环境：Python 3.6 / Windows 10
- 依赖库：[Numpy](https://numpy.org/)
- 分类算法：**K近邻**

- **错误率**：

  - **3.82%** <sup> `knn-1.0s.py`</sup>

    （9618/10000/60000）`k = 1, Euclidean distance (欧式距离)`

    处理：下采样至 10x10 像素

  - **3.09%** <sup> `knn-1.1.py` </sup>   ***Baseline***

    （9691/10000/60000）`k = 1, Euclidean distance (欧式距离)`

  - **2.91%** <sup> `knn-1.2min.py`</sup>，~~**5.34%**~~ <sup> `knn-1.2sum.py`</sup>

    （9709/10000/60000）`k = 1, Euclidean distance (欧式距离)`

    处理：2 像素漂移（水平方向），裁剪 20x20 像素

  - **2.55%** <sup> `knn-1.3.py`</sup>

    （9745/10000/60000）`k = 1, Euclidean distance (欧式距离)`

    处理：1 像素漂移（水平方向和垂直方向），裁剪 20x20 像素

  - ~~**18.3%**~~ <sup> `knn-1.4.py`</sup>

    （8170/10000/60000）`k = 1, Hamming distance (汉明距离)`

  - **2.99%** <sup> `knn-1.5.py`</sup>

    （9701/10000/60000） `k = 5, Euclidean distance (欧式距离)`

  - **2.28%** <sup> `knn-1.6.py`</sup>

    （9772/10000/60000）`k = 5, Euclidean distance (欧式距离)`

    处理：1 像素漂移（水平方向和垂直方向），裁剪 20x20 像素

    |  k   |  1   |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  10  | ...  |
    | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
    |  n   | 9745 | 9700 | 9755 | 9760 | 9772 | 9760 | 9758 | 9756 | 9754 | 9748 | ...  |
    |  %   | 2.55 | 3.00 | 2.45 | 2.40 | 2.28 | 2.40 | 2.42 | 2.44 | 2.46 | 2.52 | ...  |


<br />

### 写在最后

> 讲道理，代码挺烂的，看看就好  ╮(╯▽╰)╭

Sept. 18, 2019 - Sept. 20, 2019
