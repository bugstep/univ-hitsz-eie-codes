% File: random_binary.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function [x, bits] = random_binary(nbits,nsamples)
% This function genrates a random binary waveform of length nbits
% sampled at a rate of nsamples/bit.
x = zeros(1,nbits*nsamples);
bits = round(rand(1,nbits));
for m=1:nbits
   for n=1:nsamples
      index = (m-1)*nsamples + n;
      x(1,index) = (-1)^bits(m);
   end
end
% End of function file.