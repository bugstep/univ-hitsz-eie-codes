% ͨ��ϵͳ���棨�����������ŵ���ģ���淽��
%
% ʵ���ģ������������ŵ������
%             ���һ���л��֡�������ջ��� AWGN �ŵ���
%             �����������˥���ŵ��� AWGN �ŵ�����ʱ�ӣ�
%             ����������� 7 �����ڶ�����ԭ�������˥���ŵ���
%        �Ա������ŵ������ QPSK ϵͳ������ BER �� Eb/N0 �����ܱȽϡ�

Eb = 21:2:34; No = -50;					   % Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70;					% Channel attenuation in dB
EbNodB = (Eb-ChannelAttenuation)-No;	% Eb/No in dB
EbNo = 10.^(EbNodB./10);					% Eb/No in linear units
BER_T = 0.5*erfc(sqrt(EbNo)); 			% BER (theoretical)
N = round(100./BER_T);          			% Symbols to transmit
N(N>1e5) = 2e5;                        % ���ȹ��󣬷���ʱ��̫��
BER_MC = zeros(size(Eb)); 				   % Initialize BER vector
for k=1:length(Eb)        					% Main Loop
  BER_MC(k) = ex4_1_MCQPSKrun(N(k),Eb(k),No,ChannelAttenuation,0,0,0,0);
  disp(['Simulation ',num2str(k*100/length(Eb)),'% Complete']);
end
figure;
semilogy(EbNodB,BER_MC,'o',EbNodB,BER_T,'-')
xlabel('Eb/No (dB)'); ylabel('Bit Error Rate'); 
legend('MC BER Estimate','Theoretical BER'); grid;
