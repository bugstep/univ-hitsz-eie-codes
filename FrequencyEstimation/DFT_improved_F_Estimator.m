function fe = DFT_improved_F_Estimator(Sn,sig,fs,N)
%DFT_IMPROVED_F_ESTIMATOR
%   输入Sn为处理好的接收信号频谱向量
%   sig:时域序列
%   fs：采样频率
%   N：采样点数
%   theta:初相位
[~,index] = sort(abs(Sn),'descend');
%% Quinn 算法参数计算
a1 = real(Sn(index(1)-1)/Sn(index(1)));
a2 = real(Sn(index(1)+1)/Sn(index(1)));
d1 = a1/(1-a1);
d2 = -a2/(1-a2);
if(d1>0 && d2>0)
    d0 = d1;
else
    d0 = d2;
end

%% A&M 算法参数计算
Mn = index(1)+d0;
for j=1:2
    Xp = 0;
    Xq = 0;
    p = 0.5;
    q = -0.5;
    for i = 1:N
        Xp = sig(i)*exp(-1i*2*pi*i*(Mn+p-1)/N) + Xp;
        Xq = sig(i)*exp(-1i*2*pi*i*(Mn+q-1)/N) + Xq;
    end
    delta = 0.5*(abs(Xp)-abs(Xq))/(abs(Xp)+abs(Xq));
    Mn = Mn+delta;
end

fe = (Mn-1)*fs/N;
end

