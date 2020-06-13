% File: c10 _MCQPSKphasesync.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
PhaseError = 0:10:90; 				% Phase Error at Receiver
Eb = 24; No = -50;       	       	% Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70; 			% dB
EbNo = 10.^((Eb-ChannelAttenuation-No)/10); 
BER_T = 0.5*erfc(sqrt(EbNo)*ones(size(PhaseError)));
N = round(100./BER_T); 
BER_MC = zeros(size(PhaseError)); 
for k=1:length(PhaseError)
  BER_MC(k) = c214_MCQPSKrun(N(k),Eb,No,ChannelAttenuation,0,0,...
    PhaseError(k),0);
  disp(['Simulation ',num2str(k*100/length(PhaseError)),'% Complete']);
end
semilogy(PhaseError,BER_MC,'o',PhaseError,2*BER_T,'-')
xlabel('Phase Error (Degrees)'); 
ylabel('Bit Error Rate'); 
legend('MC BER Estimate','Theoretical BER'); grid;
 % End of script file.
