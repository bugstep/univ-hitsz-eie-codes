function [ y ] = ex7_bin2dec( x )
% 二进制数转为十进制数
%   x  二进制数
%   y  十进制数
L = length(x);
y = (L-1:-1:0);
y = 2.^y;
y = x*y';
end
