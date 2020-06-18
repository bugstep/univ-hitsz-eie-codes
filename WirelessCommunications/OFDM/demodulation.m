function Co = demodulation(M, Ci)
   [K, IQ] = get_args(M);
   
   Sd = zeros(1,length(Ci));
   for n = 1:length(Ci)
       [~, id] = min(abs(Ci(n)/K - IQ));
       Sd(n) = id(1)-1;
   end
   
	Sb = reshape(dec2bin(Sd)', 1, []);
   Co = str2num(Sb(:))';
end

