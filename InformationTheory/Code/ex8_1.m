% 分组交织 (m=7, n=4)

m = 7; n = 4;

Ci = input("请输入信息序列： ");    % 1:20
[Ct, rm] = ex8_interleaver_packet(Ci, m, n);
Co = ex8_deinterleaver_packet(Ct, rm, m, n);

fprintf("输入序列： %s\n", num2str(Ci));
fprintf("交织序列： %s\n", num2str(Ct));
fprintf("恢复序列： %s\n", num2str(Co));
