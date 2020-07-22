function fe = Rife_F_Estimator(Sn,fs,N)
%RIFE_F_ESTIMATOR
%   输入Sn为处理好的接收信号频谱幅值向量
%   fs：采样频率
%   N：采样点数
[A,index] = sort(Sn,'descend');
a = A(2)/A(1);
d = a/(1+a);
if(index(1)>index(2))
    delta = -d;
else
    delta = d;
end
    fe = (index(1)-1+delta)*fs/N;
end

