% 通信系统仿真（一）：蒙特卡罗系统仿真方法
%
% 实验三：使用每个符号 20 次采样的采样频率，
%        重新运行上面 BPSK 调制的仿真，
%        这样能否改进时延的估计？试对你的答案进行解释。
%        用 20 次采样 / 符号的采样频率估计误比特率，
%        并和 c210.m 的 10 次采样 / 符号的结果进行比较，
%        作出结果曲线图并简要说明。

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
   [BER(k), Errors(k)] = ex3_MCBPSKrun(N(k), z(k), delay, FilterSwitch);
end

semilogy(EbNodB, BER, 'o', EbNodB, BER_T);
xlabel('E_b/N_0 - dB');
ylabel('Bit Error Rate');
grid on;
legend('System Under Study','AWGN Reference');

