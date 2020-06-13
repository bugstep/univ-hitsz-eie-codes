% 通信系统仿真（二）：通信系统仿真基本方法
%
% 实验三：对某角度调制信号
%        （1）解析地确定并画出 xd(t) 和 xq(t)。
%        （2）使用 MATLAB 和 FFT 变换，确定并画出 X(f)。
%        （3）使用 MATLAB，确定并画出等效低通信号的频谱。 
%        （4）使用 MATLAB，确定并画出 xd(t) 和 xq(t)。
%        （5）比较（1）和（4）的结果

clear all; close all;

Fs = 1000;          % 采样频率
Ts = 1/Fs;          % 采样间隔
t = 0:Ts:1;         % 时间序列

Xt = 10 * cos( 2*pi * 100*t + 2 * sin( 2*pi * 10*t ));
Xd = 10 * cos( 2 * sin( 2*pi * 10*t ) );
Xq = 10 * sin( 2 * sin( 2*pi * 10*t ) );
Xl = hilbert(Xt) .* exp(-1j * 2*pi * 100*t);

% 1. 解析地确定并画出 xd(t) 和 xq(t)。
figure;
plot(t, Xd, t, Xq, 'LineWidth', 2);
hold on; plot(t, Xt, '--'); 
xlim([0 .3]); ylim([-12 12]);
xlabel('t'); ylabel('x(t)');
legend('同相分量 x_d(t)', '正交分量 x_q(t)', '调制信号 x(t)');
title('时域曲线的解析解');

% 2. 使用 MATLAB 和 FFT 变换，确定并画出 X(f)。
figure;
Xf = fft(Xt);
X1 = Xf / Fs;
f = (0:length(Xf)-1)*Fs/length(Xf)-Fs/2;
subplot(2,1,1);
plot(f,abs(fftshift(Xf)));
xlabel('频率'); ylabel('幅度');
title('x(t)幅频谱的数值解');
subplot(2,1,2);
plot(f,angle(fftshift(Xf)));
xlabel('频率'); ylabel('相位');
title('x(t)相频谱的数值解');

% 3. 使用MATLAB，确定并画出等效低通信号的频谱。
figure;
Xf = fft(Xl);
X1 = Xf / Fs;
f = (0:length(Xf)-1)*Fs/length(Xf)-Fs/2;
subplot(2,1,1);
plot(f,abs(fftshift(Xf)));
xlabel('频率'); ylabel('幅度');
title('x(t)幅频谱的数值解）');
subplot(2,1,2);
plot(f,angle(fftshift(Xf)));
xlabel('频率'); ylabel('相位');
title('x(t)相频谱的数值解');

% 4. 使用 MATLAB，确定并画出 xd(t) 和 xq(t)。
Xft(1)=Xf(1);
for i=2:length(Xf)                    
    Xft(i)=Xf(length(Xf)-i+2);
end
Xepf=(Xf + conj(Xft)) / 2;
Xopf=(Xf - conj(Xft)) / 2;
Xdr=ifft(Xepf);    % 对共轭对称分量进行傅里叶逆变换得到 xd
Xqi=ifft(Xopf);    % 对共轭反对称分量做傅里叶逆变换得到 xq

figure;
plot(t, Xdr, t, imag(Xqi), 'LineWidth', 2);
xlim([0 .3]); ylim([-12 12]);
xlabel('t'); ylabel('x(t)');
legend('同相分量 x_d(t)', '正交分量 x_q(t)');
title('时域曲线的数值解');

% 5. 比较（1）和（4）的结果
figure;
subplot(2,1,1);
plot(t, Xd, t, Xq);
xlim([0 .3]); ylim([-12 12]);
xlabel('t'); ylabel('x(t)');
legend('同相分量 x_d(t)', '正交分量 x_q(t)');
title('时域曲线的解析解');
subplot(2,1,2);
plot(t, Xdr, t, imag(Xqi));
xlim([0 .3]); ylim([-12 12]);
xlabel('t'); ylabel('x(t)');
legend('同相分量 x_d(t)', '正交分量 x_q(t)');
title('时域曲线的数值解');
