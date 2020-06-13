% File: c10_MCBPSKdelay.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
EbNodB = 6;										% Eb/No (dB) value
z = 10.^(EbNodB/10);							% convert to linear scale
delay = 0:8;									% delay vector
BER = zeros(1,length(delay));					% initialize BER vector
Errors = zeros(1,length(delay));				% initialize Errors vector
BER_T = q(sqrt(2*z))*ones(1,length(delay));	    % theoretical BER vector
N = round(100./BER_T);							% 100 errors for ideal (zero ISI) system							
FilterSwitch = 1;								% set filter switch (in=1 or out=0)
for k=1:length(delay)
   [BER(k),Errors(k)] = c209_MCBPSKrun(N(k),z,delay(k),FilterSwitch)
end
semilogy(delay,BER,'o',delay,BER_T,'-'); grid;
xlabel('Delay'); ylabel('Bit Error Rate');
% End of script file.