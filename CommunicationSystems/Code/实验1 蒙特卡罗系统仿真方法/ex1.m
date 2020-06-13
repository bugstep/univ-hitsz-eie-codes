% 通信系统仿真（一）：蒙特卡罗系统仿真方法
%
% 实验一：说明蒙特卡罗适用于二进制通信系统的原因，
%        并说明所得到的估计值的一致性和无偏性。

N = 100;
M = 10000;
Pe = .2;

T = randi(2, M, N) .* 2 - 1;
E = (rand(M, N) > .2) .* 2 - 1;
R = T .* E;

P = sum(T ~= R) ./ M;

fprintf("Pe = %g, Pe_hat = %g\n", Pe, mean(P));
fprintf("sigma = %g, sigma_hat = %g\n", ...
   Pe * (1 - Pe) / M, var(P));
