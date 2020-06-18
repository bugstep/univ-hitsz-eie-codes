function Co = ifft_cp(Ci, Nc)
   Ci = reshape(Ci, Nc, []);  % 串行转并行
   Cf = ifft(Ci) * sqrt(Nc);  % 并行 IFFT
   Cp = [Cf(end - Nc/4 + 1 : end, :); Cf];        % CP = Nc/4
   Co = reshape(Cp, 1,  []);  % 并行转串行
end
