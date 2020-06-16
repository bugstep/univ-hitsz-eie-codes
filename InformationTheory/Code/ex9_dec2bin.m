function [ y ] = ex9_dec2bin( x,L )
% 十进制数转为二进制数
%   x  十进制数
%   y  二进制数
%   L  二进制数长度
y = zeros(1,L);
i = 1;
while x>=0 && i<=L
    y(i) = rem(x,2);
    x = (x-y(i))/2;
    i = i+1;
end
y = y(L:-1:1);
end
