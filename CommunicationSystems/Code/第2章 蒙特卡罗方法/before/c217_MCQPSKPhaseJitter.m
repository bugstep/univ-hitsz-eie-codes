% File: c10 _MCQPSKPhaseJitter.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
PhaseBias = 0; PhaseJitter = 0:2:30;
Eb = 24; No = -50;              				% Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70; 						% dB
EbNo = 10.^((Eb-ChannelAttenuation-No)/10); 
BER_T = 0.5*erfc(sqrt(EbNo)*ones(size(PhaseJitter)));
N = round(100./BER_T); 
BER_MC = zeros(size(PhaseJitter)); 
for k=1:length(PhaseJitter)
  BER_MC(k) = c214_MCQPSKrun(N(k),Eb,No,ChannelAttenuation,0,0,...
    PhaseBias,PhaseJitter(k));
  disp(['Simulation ',num2str(k*100/length(PhaseJitter)),'% Complete']);
end
semilogy(PhaseJitter,BER_MC,'o',PhaseJitter,2*BER_T,'-')
xlabel('Phase Error Std. Dev. (Degrees)'); 
ylabel('Bit Error Rate'); 
legend('MC BER Estimate','Theoretical BER'); grid;
% End of script file.
