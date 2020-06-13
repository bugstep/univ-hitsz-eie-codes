% 通信系统仿真（二）：通信系统仿真基本方法
%
% 实验四：已知信号 x(t) 的傅里叶变换，
%        求出它的 Xd(f) 和 xd(t)。

clear all; close all; figure;

ts=1; fs=1/ts;
f = -150:1/ts:150;

Xf=[zeros(1, (150-110)/fs),   ...
    ones(1, (110-90)/fs) * 4, ...
    zeros(1, 90*2/fs + 1),    ...
    ones(1, (110-90)/fs) * 4, ...
    zeros(1, (150-110)/fs)];
 
x = ifft(ifftshift(Xf)); 
t = (0:length(Xf)-1)*ts/length(Xf)-ts/2;

for f0 = [100, 95, 90]
   xh = hilbert(x);
   xl = xh .* exp(-1j*2*pi*f0*t);  %低通复包络
   xd = real(fftshift(xl));
   
   fsp = length(xd)/ts;
   fp = (0:length(xd)-1)*fsp/length(xd)-fsp/2;   %频率范围
   Xdf = abs(fftshift(fft(xd)));
    
   subplot(2,1,1);
   plot(f, xd); hold on;
   subplot(2,1,2);
   plot(fp, Xdf); hold on;
end

subplot(2,1,1);
hold off; grid on;
%legend('f_0=100Hz', 'f_0=95Hz', 'f_0=90Hz');
xlabel('t / s'); ylabel('x_d(t)'); ylim([-.7 .7]);
title('不同中心频率的 x_d(t)');

subplot(2,1,2);
hold off; grid on;
legend('f_0=100Hz', 'f_0=95Hz', 'f_0=90Hz', ...
       'Location', 'southeast');
xlabel('f / Hz'); ylabel('X_d(f)'); xlim([-150 150]);
title('不同中心频率的 X_d(f)');
