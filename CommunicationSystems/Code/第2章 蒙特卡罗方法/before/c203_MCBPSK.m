% File: c9_MCBPSK.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
snrdB_min = -3; snrdB_max = 8;	    % SNR (in dB) limits 
snrdB = snrdB_min:1:snrdB_max;
Nsymbols = input('Enter number of symbols > ');
snr = 10.^(snrdB/10);				% convert from dB
h = waitbar(0,'SNR Iteration');
len_snr = length(snrdB);

for j=1:len_snr						% increment SNR
   waitbar(j/len_snr)
   sigma = sqrt(1/(2*snr(j)));	    % noise standard deviation
   error_count = 0;
   for k=1:Nsymbols					% simulation loop begins
      d = round(rand(1));			% data
      x_d = 2*d - 1;				% transmitter output
      n_d = sigma*randn(1);		    % noise
      y_d = x_d + n_d;				% receiver input
      if y_d > 0					% test condition
         d_est = 1;					% conditional data estimate
      else
         d_est = 0;					% conditional data estimate
      end
      if (d_est ~= d)
         error_count = error_count + 1;	% error counter
      end
   end									% simulation loop ends
   errors(j) = error_count;		        % store error count for plot
end
close(h)
ber_sim = errors/Nsymbols;			    % BER estimate
ber_theor = qfunc(sqrt(2*snr));		        % theoretical BER
semilogy(snrdB,ber_theor,snrdB,ber_sim,'o')
axis([snrdB_min snrdB_max 0.0001 1])
xlabel('SNR in dB')
ylabel('BER')
legend('Theoretical','Simulation')
% End of script file.
   