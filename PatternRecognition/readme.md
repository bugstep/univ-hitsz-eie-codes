Source code licensed under the **Mozilla Public License 2.0**

<br />

# Handwritten Digit Recognition <sub>MNIST</sub>

### General

- **Database:** [MNIST handwritten digit database](http://yann.lecun.com/exdb/mnist/?tdsourcetag=s_pctim_aiomsg)
    - 60000 training samples, 10000 testing samples
    - 20x20 pixel box centered in 28x28 pixel image by center of mass
    - Pixel values are 0<sup> white</sup> to 255<sup> black</sup>
- **Environment:** Python 3.6 / Windows 10
- **Dependency:** [Numpy](https://numpy.org/), [Numba](https://numba.pydata.org/)
- **Classifier:** **KNN (K-Nearest Neighbor)**, Euclidean distance

<br />

### Error Rate

|       K       |    1     |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  10  | ...  |
| :------------: | :------: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| **Bounding Box** | **3.64** | 4.45 | 3.84 | 4.04 | 3.89 | 3.97 | 4.08 | 4.18 | 4.15 | 4.35 | ...  |
| **Center of Mass** | 3.09 | 3.73 | **2.95** | 3.18 | 3.12 | 3.23 | 3.06 | 3.30 | 3.41 | 3.35 | ...  |
| **1-Pixel Shift** | 2.70 | 3.12 | 2.46 | 2.51 | 2.46 | 2.45 | **2.42** | 2.54 | 2.52 | 2.59 | ...  |
| **Weighted** <sup>`-1/d`<sup> | 3.09 | 3.09 | **2.83** | 2.85 | 3.09 | 2.91 | 3.00 | 2.95 | 3.24 | 3.15 | ...  |
| **Weighted** <sup>`exp(-d²/2)`<sup> | 3.09 | 3.09 | 2.91 | **2.83** | 3.00 | 2.81 | 2.96 | 2.91 | 3.02 | 3.00 | ...  |
