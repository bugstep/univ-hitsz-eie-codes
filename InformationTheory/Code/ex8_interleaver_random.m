function [Ct, s, rm] = ex8_interleaver_random(Ci, N)
   s = randperm(N);
   
   if mod(length(Ci), N) ~= 0
      rm = N - mod(length(Ci), N);
      Ci = [Ci zeros(1, rm)];
   else
      rm = 0;
   end
   
   Ct = Ci;
   for n = 1:N:length(Ci)
      for i = 0:N-1
         p = n + s(i+1) - 1;
         Ct(p) = Ci(n+i);
      end
   end
end
