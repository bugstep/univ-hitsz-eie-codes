% 通信系统仿真（一）：蒙特卡罗系统仿真方法
%
% 实验四：修改本章中BPSK调制的仿真，
%        使PSK系统的仿真是逐个符号的方式
%        而不是块级联的方式。也就是说，
%        随机二进制数据源产生二进制比特，
%        重复对应于这些二进制符号的波形样本，
%        以满足给定的采样数/符号指标所需的次数。

EbNodB = 0:8;                 % vector of Eb/No (dB) values
z = 10 .^ (EbNodB / 10);	   % convert to linear scale
delay = 10;						   % enter delay value (samples)
BER = zeros(1, length(z));		% initialize BER vector
Errors = zeros(1, length(z));	% initialize Errors vector
BER_T = q(sqrt(2 * z));			% theoretical (AWGN) BER vector
N = round(20 ./ BER_T);			% 20 errors for ideal (zero ISI) system
FilterSwitch = 1;				   % Tx filter out (0) or in (1)

for k = 1:length(z)
   N(k) = max(1000, N(k));		% ensure at least one block processed 
   [BER(k), Errors(k)] = ex4_MCBPSKrun(N(k), z(k), delay, FilterSwitch);
end

semilogy(EbNodB, BER, 'o', EbNodB, BER_T);
xlabel('E_b/N_0 - dB');
ylabel('Bit Error Rate');
grid on;
legend('System Under Study','AWGN Reference');

