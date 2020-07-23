function fe = Jacobsen_F_Estimator(Sn,fs,N,se)
%   Jacobsen_F_Estimator
%   输入Sn为处理好的接收信号频谱向量
%   fs：采样频率
%   N：采样点数
%%
% WINDOW      P     Q
% HAMMING   1.22  0.60
% HANNING   1.36  0.55
% BLACKMAN  1.75  0.55
% 对于参数se：矩形窗或无窗0，哈明窗2，汉宁窗3，布莱克曼窗4
%% 
Sn(1) = 0;
[~,index] = sort(abs(Sn),'descend');
switch(se)
    case 0
        d = -real((Sn(index(1)+1)-Sn(index(1)-1))/...
            (2*Sn(index(1))-Sn(index(1)-1)-Sn(index(1)+1)));
    case 2
        Q = 0.6;
        d = real(Q*(Sn(index(1)-1)-Sn(index(1)+1))/...
            (2*Sn(index(1))+Sn(index(1)-1)+Sn(index(1)+1)));
    case 3
        Q = 0.55;
        d = real(Q*(Sn(index(1)-1)-Sn(index(1)+1))/...
            (2*Sn(index(1))+Sn(index(1)-1)+Sn(index(1)+1)));
    case 4
        Q = 0.55;
        d = real(Q*(Sn(index(1)-1)-Sn(index(1)+1))/...
            (2*Sn(index(1))+Sn(index(1)-1)+Sn(index(1)+1)));
    otherwise
        error('Input value ERROR!');
end

fe = (index(1)+d-1)*fs/N;
end

