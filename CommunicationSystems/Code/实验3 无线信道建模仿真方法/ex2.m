% 通信系统仿真（三）：无线信道建模仿真方法
%
% 实验二：通过仿真说明时变系统对两个输入音频的
%        影响不同，从而表明系统的频率选择性。

close all; clear all;

% File: c13_tiv2.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
% Set default parameters
f1 = 512; f2 = 128;		% default signal frequency
bdoppler = 64;				% default doppler sampling
fs = 8192; 					% default sampling frequency
tduration = 1;				% default duration
ndelay = 8;
ts = 1.0/fs;				% sampling period 
n = tduration*fs;			% number of samples
t = ts*(0:n-1);			    % time vector
x1 = exp(i*2*pi*f1*t) + exp(i*2*pi*f2*t);	    % complex signal

%
% Generate two uncorrelated seq of Complex Gaussian Samples
%
z1 = randn(1,n)+i*randn(1,n);
z2 = randn(1,n)+i*randn(1,n);
%
% Filter the two uncorrelated samples to generate correlated sequences
%
coefft = exp(-bdoppler*2*pi*ts);     
zz1 = zeros(1,n);
zz2 = zeros(1,n);
for k = 2:n   
   zz1(k) = z1(k)+coefft*zz1(k-1);
   zz2(k) = z2(k)+coefft*zz2(k-1);
end

y1 = x1.*zz1;					 	% first output component 
y2 = x1.*zz2; 						% second output component
y(1:ndelay) = y1(1:ndelay);
y(ndelay+1:n) = y1(ndelay+1:n)+y2(1:n-ndelay);
%
% Plot the results 
%
[psdzz1,freq] = log_psd(zz1,n,ts);
figure; plot(freq,psdzz1); grid;
ylabel('PSD of Output in dB')
xlabel('Frequency')
title('PSD of the First Component Impulse Response');

[psdy1,freq] = log_psd(y,n,ts);
figure; plot(freq,psdy1); grid;
ylabel('PSD of Output in dB')
xlabel('Frequency')
title('Spread Output of the LTV System');
% End of script file.
