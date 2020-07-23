function [s_cont, t_cont,   ...
          s, t, Sf, Sa, Fa] ...
   = Window(M, f, b, n, k, w, B, v)

% 根据输入要求进行时域采样
% M：采样点数
% f：频率
% b：初相位
% n：信噪比
% B：干扰相对值
% v：干扰相对频偏
% k：噪声类型
%  - 0：高斯噪声
%  - 1：瑞利噪声
%  - 2：均匀噪声
% w：窗函数类型
%  - 0：
%  - 1：
%  - 2：
%  - 3：
%  - 4：

A = 2;                  % 幅值
fs = 4 * f;             % 采样频率为4倍最大频率

t_cont = 0: .001/fs: (M-1)/fs;             % 时间
s_cont = A * cos(2 * pi * f * t_cont + b); % 信号表达式

t = 0: 1/fs: (M-1)/fs;  
signal = A * cos(2 * pi * f * t + b)...
       + B * A * cos(2 * pi * f * (1 + v) * t + b); % 时域信号序列

if n == inf
   noise = zeros(1, M);
else
   % SNR = A^2 / sigma^2
   sigma = sqrt(A ^ 2 / 10^(n/10)); % 噪声标准差
   if k == 0
        noise = sigma .* randn(1, M); % 高斯噪声
   else
       if k == 1
           noise = (-sigma .* log(1-randn(1, M))).^0.5; % 瑞利噪声
       else
           noise = sigma .* rand(1,M); % 均匀噪声
       end
   end
end

samples = signal + noise; % AWGNC

% 加入窗函数
switch (w)
   case 0    % 矩形窗
      s = samples .* (rectwin(M))';
   case 1    % 三角窗
      s = samples .* (triang(M))';
   case 2    % 哈明窗（Hamming）
      s = samples .* (hamming(M))';
   case 3    % 汉宁窗（Hanning）
      s = samples .* (hann(M))';
   case 4    % 布莱克曼窗（Blackman）
      s = samples .* (blackman(M))';
   case 5    % 凯泽窗（Kaiser）
      s = samples .* (kaiser(M, 8.5))';  % beta = 8.5
end

DFT = fft(s, M) / M;       % FFT得到频谱
Sf = DFT(1:M/2);
Sa = abs(DFT(1:M/2));

Fa = (0:1:M/2-1) .*fs ./M; % 分析频率
end

