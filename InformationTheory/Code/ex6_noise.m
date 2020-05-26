function R = ex6_noise(C, n, details)
   if (nargin < 3)
        details = true;
   end
   
   R = [];
   
   for i = 1: length(C) / 7
      Ci = C(i * 7 - 6 : i * 7);
      Ei = shuffle(7, n);
      
      Ri = Ci;
      for ind = Ei
         Ri(ind) = mod(Ri(ind) + 1, 2);
      end
      
      R = [R Ri];
      
      if details
         fprintf("\n[%02d] %s -> %s  (%d errors)", i, ...
            replace(num2str(Ci), ' ', ''), ...
            replace(num2str(Ri), ' ', ''), n);
      end
   end
end

function ind = shuffle(n, i)
   N = 1:n;
   for c = 0: i-1
      p = c + randi(n - c);
      tmp = N(c + 1);
      N(c + 1) = N(p);
      N(p) = tmp;
   end
   ind = N(1:i);
end
