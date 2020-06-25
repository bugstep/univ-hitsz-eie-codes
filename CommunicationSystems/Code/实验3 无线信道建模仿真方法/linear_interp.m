% File: linear_interp.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function [y] = linear_interp(x,m)
% This function takes the elements in a colium(row) vector x and 
% produces linearly interpolated vlaues in array y.
% Interpolation factor is m
nx = max(max(size(x)));
for n=1:nx
   data = x(n);
   for nn = 1:m
      index = (n-1)*m+nn;
      y(index) = data;
   end
end
% End of function file.
