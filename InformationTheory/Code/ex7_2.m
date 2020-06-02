clear all; close all;

% 第五部分：(3,2,3)卷积码的编译码

M = input("请输入信息序列："); 
% [1 1 0 0 1 0 1 1]

fprintf("\n信息序列：%s", ...
   replace(num2str(M), ' ', ''));

g0 = [1, 0, 0; 0, 0, 0];
g1 = [1, 0, 1; 1, 1, 0];
g2 = [0, 0, 0; 1, 0, 0];
g = [g0; g1; g2];

D = [0, 0, 0; 0, 0, 0];

M = [M zeros(1, 6 + mod(length(M), 2))];

C = [];

for i = 1:2:length(M)-1
   m = M(i: i+1);
   D = [m' D(:, 1:2)];
   C = [C, mod(sum(sum(D .* g0)), 2), ...
           mod(sum(sum(D .* g1)), 2), ...
           mod(sum(sum(D .* g2)), 2)];
end

fprintf("\n编码结果：%s\n\n", ...
   replace(num2str(C), ' ', ''));

% S = ex7_conv_decode(g, 2, C);
% fprintf("\n解码结果：%s\n\n", ...
%    replace(num2str(S), ' ', ''));
