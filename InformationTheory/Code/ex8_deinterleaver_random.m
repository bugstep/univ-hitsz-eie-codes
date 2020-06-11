function Co = ex8_deinterleaver_random(Ct, s, rm)
   N = length(s);
   if mod(length(Ct), N) ~= 0
      rm = N - mod(length(Ct), N);
      Ct = [Ct zeros(1, rm)];
   end
   
   Co = Ct;
   for n = 1:N:length(Ct)
      for i = 0:N-1
         p = n + s(i+1) - 1;
         Co(n+i) = Ct(p);
      end
   end

   Co = Co(1: length(Co) - rm);
end
