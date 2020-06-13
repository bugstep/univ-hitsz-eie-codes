% File: c10_MCQPSKdelay.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
Eb = 23; No = -50;				% Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70;		% channel attenuation in dB
N = 1000;                        
delay = -0.1:0.1:0.5;                  
EbNo = 10.^(((Eb-ChannelAttenuation)-No)/10);
BER_MC = zeros(size(delay));       
for k=1:length(delay)            
  BER_MC(k) = c214_MCQPSKrun(N,Eb,...
       No,ChannelAttenuation,delay(k),0,0,0);
  disp(['Simulation ',...
       num2str(k*100/length(delay)),'% Complete']);
end
BER_T = 0.5*erfc(sqrt(EbNo))*ones(size(delay)); % Theoretical BER
semilogy(delay,BER_MC,'o',delay,2*BER_T,'-')    %Plot BER vs Delay
xlabel('Delay (symbols)'); ylabel('Bit Error Rate'); 
legend('MC BER Estimate','Theoretical BER');grid;
% End of script file.
