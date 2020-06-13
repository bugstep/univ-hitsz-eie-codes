% File: qpsk_berest.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function [peideal,pesystem] = qpsk_berest(xx,yy,ebn0db,eb,tb,nbw)
% ebn0db is an array of Eb/No values in db (specified at the
% receiver input); tb is the bit duration and nbw is the noise BW
% xx is the reference (ideal) input;  yy is the distorted output;
%
[n1 n2] = size(xx); nx = n1*n2;
[n3 n4] = size(yy); ny = n3*n4;
[n5 n6] = size(ebn0db); neb = n5*n6;
%
% For comparision purposes, set the noise BW of the ideal
% receiver (integrate and dump) to be equal to rs/2.
%
nbwideal = 1/(2*tb*2);
for m=1:neb
   peideal(m) = 0.0; pesystem(m) = 0.0;			% initialize
   %
   % Find  n0 and the variance of the noise. 
   %
   string1 = ['Eb/No = ',num2str(ebn0db(m))];
   disp(string1)								% track execution
   ebn0(m) = 10^(ebn0db(m)/10);					% dB to linear
   n0 = eb/ebn0(m);								% noise power
   sigma = sqrt(n0*nbw*2);						% variance
   sigma1 = sqrt(n0*nbwideal*2);				% variance of ideal
   %
   % Multiply the input constellation/signal by a scale factor so that
   % input constellation and the constellations/signal at the input to
   % receive filter have the same ave power a=sqrt(2*eb/(2*tb)).
   %
   b = sqrt(2*eb/tb)/sqrt(sum(abs(xx).^2)/nx);
   for n=1:nx
      theta = angle(xx(n)); 
      if (theta<0)
         theta = theta+2*pi;
      end
   	%   
   	% Rotate x and y to the first quadrant and compute BER.
   	%
      xxx(n) = b*xx(n)*exp(-i*(theta-(pi/4)));
      yyy(n) = yy(n)*exp(-i*(theta-(pi/4)));
      d1 = real(xxx(n)); d2 = imag(xxx(n));		    % reference
      d3 = real(yyy(n)); d4 = imag(yyy(n));		    % system
      pe1 = q(d1/sigma1)+q(d2/sigma1);				% reference
      pe2 = q(d3/sigma)+q(d4/sigma);				% system
      peideal(m) = peideal(m)+pe1;					% SER of reference
      pesystem(m) = pesystem(m)+pe2;				% SER of system
   end
end
peideal = (1/2)*peideal./nx;					    % convert to BER
pesystem = (1/2)*pesystem./nx;				        % convert to BER
% End of function file.