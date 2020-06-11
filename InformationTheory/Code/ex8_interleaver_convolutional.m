function Ct = ex8_interleaver_convolutional(Ci, B, M)
   Li = length(Ci);
   Ct = zeros(1, Li + M * B * (B - 1));
   
   for i = 1:Li
      delay = M * B * mod(i-1, B);
      tg = i + delay;
      Ct(tg) = Ci(i);
   end
end
