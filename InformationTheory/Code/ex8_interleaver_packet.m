function [Ct, rm] = ex8_interleaver_packet(Ci, m, n)
   Ct = []; sz = m * n;
   
   if mod(length(Ci), sz) ~= 0
      rm = sz - mod(length(Ci), sz);
      Ci = [Ci zeros(1, rm)];
   else
      rm = 0;
   end
   
   for i = 1: sz: length(Ci)-1
      c = Ci(i: i+sz-1);
      Ct = [Ct interleaver(c)];
   end
   
   function co = interleaver(ci)
      R  = reshape(ci, n, m);
      co = reshape(R', 1, sz);
   end
end
