% File: c10_MCBPSKber.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
EbNodB = 0:8;					% vector of Eb/No (dB) values
z = 10.^(EbNodB/10);			% convert to linear scale
delay = 5;						% enter delay value (samples)
BER = zeros(1,length(z));		% initialize BER vector
Errors = zeros(1,length(z));	% initialize Errors vector
BER_T = q(sqrt(2*z));			% theoretical (AWGN) BER vector
N = round(20./BER_T);			% 20 errors for ideal (zero ISI) system
FilterSwitch = 1;				% Tx filter out (0) or in (1)
for k=1:length(z)
   N(k) = max(1000,N(k));		% ensure at least one block processed 
   [BER(k),Errors(k)] = c10_MCBPSKrun(N(k),z(k),delay,FilterSwitch)
end
semilogy(EbNodB,BER,'o',EbNodB,BER_T)
xlabel('E_b/N_0 - dB'); ylabel('Bit Error Rate'); grid
legend('System Under Study','AWGN Reference',0)
% End of script file.