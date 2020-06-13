% 通信系统仿真（一）：蒙特卡罗系统仿真方法
%
% 实验三：使用每个符号 20 次采样的采样频率，
%        重新运行上面 BPSK 调制的仿真，
%        这样能否改进时延的估计？试对你的答案进行解释。
%        用 20 次采样 / 符号的采样频率估计误比特率，
%        并和 c210.m 的 10 次采样 / 符号的结果进行比较，
%        作出结果曲线图并简要说明。

EbNodB = 6;										             % Eb/No (dB) value
z = 10 .^ (EbNodB/10);							          % convert to linear scale
delay = 0:20;									             % delay vector
BER = zeros(1, length(delay));				          % initialize BER vector
Errors = zeros(1, length(delay));				       % initialize Errors vector
BER_T = q(sqrt(2*z)) * ones(1, length(delay));	    % theoretical BER vector
N = round(100 ./ BER_T);							       % 100 errors for ideal (zero ISI) system							
FilterSwitch = 1;								             % set filter switch (in=1 or out=0)
for k=1:length(delay)
   [BER(k),Errors(k)] = ex3_MCBPSKrun(N(k), z, delay(k), FilterSwitch)
end
semilogy(delay, BER, 'o', delay, BER_T, '-');
xlabel('Delay'); ylabel('Bit Error Rate'); grid;

