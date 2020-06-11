% 随机交织 (N=28)

N = 28;

Ci = input("请输入信息序列： ");    % 1:20
[Ct, s, rm] = ex8_interleaver_random(Ci, N);
Co = ex8_deinterleaver_random(Ct, s, rm);

fprintf("输入序列： %s\n", num2str(Ci));
fprintf("交织序列： %s\n", num2str(Ct));
fprintf("恢复序列： %s\n", num2str(Co));
