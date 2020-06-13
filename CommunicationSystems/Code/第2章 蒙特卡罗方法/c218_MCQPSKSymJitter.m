% File: c10 _MCQPSKSymJitter.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
SymJitter = 0:0.02:0.2;
Eb = 24; No = -50;              	% Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70; 			% channel attenuation in dB
EbNo = 10.^((Eb-ChannelAttenuation-No)/10); 
BER_T = 0.5*erfc(sqrt(EbNo)*ones(size(SymJitter)));
N=round(100./BER_T); 
BER_MC = zeros(size(SymJitter)); 
for k=1:length(SymJitter)
  BER_MC(k) = c214_MCQPSKrun(N(k),Eb,No,ChannelAttenuation,0,SymJitter(k),0,0);
  disp(['Simulation ',num2str(k*100/length(SymJitter)),'% Complete']);
end
semilogy(SymJitter,BER_MC,'o',SymJitter,2*BER_T,'-')
xlabel('Symbol Timing Error Std. Dev. (Symbols)'); 
ylabel('Bit Error Rate'); 
legend('MC BER Estimate','Theoretical BER'); grid;
% End of script file.
