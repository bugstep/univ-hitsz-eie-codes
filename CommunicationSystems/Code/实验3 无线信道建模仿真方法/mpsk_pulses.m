function [x] =mpsk_pulses(M,nsymbols,nsamples)
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
% This function genrates a random MPSK  complex NRZ waveform of 
% length nsymbols; Each symbol is sampled at a rate of nsamples/bit
u = rand(1,nsymbols);rinteger= round ((M*u)+0.5);
phase = pi/M+((rinteger-1)*(2*pi/M));
for m=1:nsymbols
   for n=1: nsamples
      index = (m-1)*nsamples + n;
      x(1,index) = exp(i*phase(m));
   end
end
% End of function file.