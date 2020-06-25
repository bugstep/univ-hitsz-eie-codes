% File: c10_MCQPSKber.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
Eb = 22:0.5:26; No = -50;					% Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70;					% Channel attenuation in dB
EbNodB = (Eb-ChannelAttenuation)-No;	    % Eb/No in dB
EbNo = 10.^(EbNodB./10);					% Eb/No in linear units
BER_T = 0.5*erfc(sqrt(EbNo)); 			    % BER (theoretical)
N = round(100./BER_T);          			% Symbols to transmit
BER_MC = zeros(size(Eb)); 					% Initialize BER vector
for k=1:length(Eb)        					% Main Loop
  BER_MC(k) = c214_MCQPSKrun(N(k),Eb(k),No,ChannelAttenuation,0,0,0,0);
  disp(['Simulation ',num2str(k*100/length(Eb)),'% Complete']);
end

% End of script file.
