% File: psk_berest.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function [peideal,pesystem] = psk_berest(xx,yy,ebn0db,eb,tb,nbw)
% ebn0db is an array of Eb/No values in db (specified at the
% receiver input); tb is the bit duration and nbw is the noise BW
% xx is the reference (ideal) input;  yy is the filtered output;
%
nx = length(xx);
%
% For comparision purposes, set the noise BW of the ideal
% receiver (integrate and dump) to be equal to rs/2.
%
nbwideal = 1/(2*tb);
for m=1:length(ebn0db)
   peideal(m) = 0.0; pesystem(m) = 0.0;			% initialize
   %
   % Find n0 and the variance of the noise. 
   %
   ebn0(m) = 10^(ebn0db(m)/10);					% dB to linear
   n0 = eb/ebn0(m);								% noise power
   sigma = sqrt(n0*nbw*2);						% variance
   sigma1 = sqrt(n0*nbwideal*2);				% variance of ideal
   %
   % Multiply the input constellation/signal by a scale factor so that
   % input constellation and the constellations/signal at the input to
   % receive filter have the same ave power a = sqrt(2*eb/(2*tb)).
   %
   b = sqrt(2*eb/tb)/sqrt(sum(abs(xx).^2)/nx);
   d1 = b*abs(xx);
   d3 = abs(yy);  
   peideal(m) = sum(q(d1/sigma1));
   pesystem(m) = sum(q(d3/sigma));
end   
peideal = peideal/nx;
pesystem = pesystem/nx;
% End of function file.
