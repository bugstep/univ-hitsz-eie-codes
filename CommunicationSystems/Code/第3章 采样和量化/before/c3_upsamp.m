% File: c3_upsample.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function out=c3_upsamp(in,M)
L = length(in);
out = zeros(1,(L-1)*M+1);
for j=1:L
   out(M*(j-1)+1)=in(j);
end
% End of function file.