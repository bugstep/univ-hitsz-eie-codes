% File: qam.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function [xd,xq] = qam(levelx,levely,m,n)
xd = mary(levelx,m,n);
xq = mary(levely,m,n);
% End of function file.