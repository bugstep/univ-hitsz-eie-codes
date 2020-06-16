function [Ct, rm] = ex9_interleaver_random_s(Ci, s)
   N = length(s);
   
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
         Ct(n+i) = Ci(p);
      end
   end
end
