% 通信系统仿真（三）：无线信道建模仿真方法
%
% 实验四：对下面三种信道情况：
%             情况一：有积分—清除接收机的 AWGN 信道；
%             情况二：瑞利衰落信道加 AWGN 信道，无时延；
%             情况三：例题 7 中由于多普勒原因引起的衰落信道；
%        对比三种信道情况下 QPSK 系统，进行 BER 对 Eb/N0 的性能比较。

Eb = 21:2:34; No = -50;					   % Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70;					% Channel attenuation in dB
EbNodB = (Eb-ChannelAttenuation)-No;	% Eb/No in dB
EbNo = 10.^(EbNodB./10);					% Eb/No in linear units
BER_T = 0.5*erfc(sqrt(EbNo)); 			% BER (theoretical)
N = round(100./BER_T);          			% Symbols to transmit
N(N>1e5) = 2e5;                        % 长度过大，仿真时间太长
BER_MC = zeros(size(Eb)); 				   % Initialize BER vector
for k=1:length(Eb)        					% Main Loop
  BER_MC(k) = ex4_1_MCQPSKrun(N(k),Eb(k),No,ChannelAttenuation,0,0,0,0);
  disp(['Simulation ',num2str(k*100/length(Eb)),'% Complete']);
end
figure;
semilogy(EbNodB,BER_MC,'o',EbNodB,BER_T,'-')
xlabel('Eb/No (dB)'); ylabel('Bit Error Rate'); 
legend('MC BER Estimate','Theoretical BER'); grid;
