% 通信系统仿真（三）：无线信道建模仿真方法
%
% 实验三：扩展例题 5 给出的仿真到 6 路模型，
%        在如下的功率曲线下运行 BER 仿真（假设为平坦衰落）
%        (1) 6 路的功率平均
%        (2) 6 个抽头具有指数下降的功率曲线，
%            其中最后一个抽头比第一个抽头低 10dB。


close all; clear all;

% File: c14_threeray.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
% Default parameters
% 
NN = 1024;								% number of symbols
tb = 0.5;								% bit time
fs = 16;                         % samples/symbol
ebn0db = [1:2:14];					% Eb/N0 vector
%
% Establish QPSK signals
%
x = random_binary(NN,fs)+i*random_binary(NN,fs);   % QPSK signal
%
% Input powers and delays
%
P_dB = zeros(1,6);
P = 10.^(P_dB/10);
delay = [0,(0:1:4)*3];
%
% Set up the Complex Gaussian (Rayleigh) gains
%
gain = zeros(6,NN);
gain(1) = sqrt(P(1));
for n = 2:6
    gain(n,:) = sqrt(P(n))*abs(randn(1,NN) + i*randn(1,NN));
end
% 增益上采样
gain_sample = zeros(6,NN*fs);
for k = 1:NN
    gain_sample(:,(k-1)*fs+1:k*fs) = gain(:,k) .* ones(6,fs);
end
% 构造延时序列
y = zeros(1,NN*fs);
for k = 1:delay(end) 
       y(k) = x(k)  *gain_sample(1,k) ...
            + x(k-delay(2)) * gain_sample(2,k) * (k>=delay(2)+1);
    if k >= delay(3)+1
        y(k) = y(k) + x(k-delay(3)) * gain_sample(3,k);
    end
    if k >= delay(4)+1
        y(k) = y(k) + x(k-delay(4)) * gain_sample(4,k);
    end
    if k >= delay(5)+1
        y(k) = y(k) + x(k-delay(5)) * gain_sample(4,k);
    end     
end
% 生成输出
for k = (delay(end)+1) : (NN*fs)
   y(k) = x(k)          * gain_sample(1,k) + ...
          x(k-delay(2)) * gain_sample(2,k) + ...
          x(k-delay(3)) * gain_sample(3,k) + ...
          x(k-delay(4)) * gain_sample(4,k) + ...
          x(k-delay(5)) * gain_sample(5,k) + ...
          x(k-delay(6)) * gain_sample(6,k);
end
%
% Matched filter
%
b = ones(1,fs); b = b/fs; a = 1;
y = filter(b,a,y);
%
% End of simulation 
%
% Use the semianalytic BER estimator. The following sets 
% up the semi analytic estimator. Find the maximum magnitude 
% of the cross correlation and the corresponding lag.
%
[cor lags] = vxcorr(x,y);
[cmax nmax] = max(abs(cor));
timelag = lags(nmax);
theta = angle(cor(nmax))
y = y*exp(-i*theta);     								% derotate 
%
% Noise BW calibration
%
hh = impz(b,a); ts = 1/16; nbw = (fs/2)*sum(hh.^2);
%
% Delay the input, and do BER estimation on the last 128 bits. 
% Use middle sample. Make sure the index does not exceed number 
% of input points. Eb should be computed at the receiver input. 
%
index = (10*fs+8:fs:(NN-10)*fs+8);
xx = x(index);
yy = y(index-timelag+1);
eb = tb*sum(sum(abs(y).^2))/(NN*fs);
eb = eb/2;
[peideal,pesystem] = qpsk_berest(xx,yy,ebn0db,eb,tb,nbw);
figure
semilogy(ebn0db,peideal,'b*-',ebn0db,pesystem,'r+-')
xlabel('E_b/N_0 (dB)'); ylabel('Probability of Error'); grid
axis([0 14 10^(-10) 1])
% End of script file.
