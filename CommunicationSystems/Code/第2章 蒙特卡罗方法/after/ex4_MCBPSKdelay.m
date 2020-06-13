% 通信系统仿真（一）：蒙特卡罗系统仿真方法
%
% 实验四：修改本章中BPSK调制的仿真，
%        使PSK系统的仿真是逐个符号的方式
%        而不是块级联的方式。也就是说，
%        随机二进制数据源产生二进制比特，
%        重复对应于这些二进制符号的波形样本，
%        以满足给定的采样数/符号指标所需的次数。

EbNodB = 6;										             % Eb/No (dB) value
z = 10 .^ (EbNodB/10);							          % convert to linear scale
delay = 0:20;									             % delay vector
BER = zeros(1, length(delay));				          % initialize BER vector
Errors = zeros(1, length(delay));				       % initialize Errors vector
BER_T = q(sqrt(2*z)) * ones(1, length(delay));	    % theoretical BER vector
N = round(100 ./ BER_T);							       % 100 errors for ideal (zero ISI) system							
FilterSwitch = 1;								             % set filter switch (in=1 or out=0)
for k=1:length(delay)
   [BER(k),Errors(k)] = ex4_MCBPSKrun(N(k), z, delay(k), FilterSwitch)
end
semilogy(delay, BER, 'o', delay, BER_T, '-');
xlabel('Delay'); ylabel('Bit Error Rate'); grid;

