function Co = icp_fft(Ci, Nc)
   Ci = reshape(Ci, Nc + Nc/4, []);  % 串行转并行
   Cp = Ci(end - Nc + 1: end, :);    % 去循环前缀
   Cf = fft(Cp) / sqrt(Nc);          % 并行 FFT
   Co = reshape(Cf, 1, []);          % 并行转串行
end
