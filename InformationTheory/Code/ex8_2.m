% 卷积交织 (M=7, B=4)

B = 4; M = 7;

Ci = input("请输入信息序列： ");    % 1:20
Ct = ex8_interleaver_convolutional(Ci, B, M);
Co = ex8_deinterleaver_convolutional(Ct, B, M);

fprintf("输入序列： %s\n", num2str(Ci));
fprintf("交织序列： %s\n", num2str(Ct));
fprintf("恢复序列： %s\n", num2str(Co));
