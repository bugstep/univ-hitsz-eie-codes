% 通信系统仿真（二）：通信系统仿真基本方法
%
% 实验一：使用每秒 10 个采样的频率
%        fs 对信号进行采样，
%        画出 X(f) 和 Xs(f)。
%        假定重构滤波器是带宽为
%        fs/2 的理想低通滤波器，
%        具有通带增益 Ts=1/fs，
%        画出重构滤波器的输出。

clear all; close all;

Fs = 10;            % 采样频率
Ts = 1/Fs;          % 采样间隔
df = 0.01;          % 频谱分辨率
L = 150;            % 序列长度
t = (0:L-1) * Ts;   % 时间序列
y = 5 * cos(6*pi .* t) ...
  + 3 * sin(8*pi .* t);

[Xs,x,df1] = fftseq(y, Fs, df);   % derive the fft
X1 = Xs / L;                      % scaling
f = (0: df1: df1 * (length(x)-1)) .* 100 - Fs/2;
f1 = (-Fs/2/df : Fs/2/df) * df;
Xf = zeros(1, length(f1));

Xf(f1==3|f1==-3) = 5/2;
Xf(f1==4|f1==-4) = 3/2;
figure;
subplot(2, 1, 1)
plot(f1, abs(Xf));
xlabel('Frequency')
title('Magnitude-pectrum of x(t) derived analytically')

subplot(2, 1, 2)
plot(f, fftshift(abs(X1)));
xlabel('Frequency')
title('Magnitude-pectrum of x(t) derived numerically')

% 重构信号
t_rebuild = (0: length(x)-1) * Ts;
x_rebulid = ifft(X1) * L;
t_origin = (0: 10*length(x)-1) * (Ts/10);
x_origin = 5 * cos(6*pi .* t_origin) ...
         + 3 * sin(8*pi .* t_origin);

figure;
plot(t_origin, x_origin, '--', t_rebuild, x_rebulid)
title('原始信号的重构')
xlabel('时间 (t/s)')
xlim([0, 30*Ts]);
legend('原始信号', '重构信号')
