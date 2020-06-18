function Co = modulation(M, Ci)
   [K, IQ] = get_args(M);                 % 参数
   Sb = reshape(Ci, log2(M), [])';        % 分组
   Sd = bin2dec(num2str(Sb))';
   Co = K * IQ(Sd+1);                     % 调制结果
end

