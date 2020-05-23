% File: nkchoose.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function out=nkchoose(n,k)
% Computes n!/k!/(n-k)!
a = sum(log(1:n));			% ln of n!
b = sum(log(1:k));			% ln of k!
c = sum(log(1:(n-k)));		% ln of (n-k)!
out = round(exp(a-b-c));	% result
% End of function file.

