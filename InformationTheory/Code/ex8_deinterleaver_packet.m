function Co = ex8_deinterleaver_packet(Ct, rm, m, n)
   Co = []; sz = m * n;
   
   for i = 1: sz: length(Ct)-1
      c = Ct(i: i+sz-1);
      Co = [Co deinterleaver(c)];
   end

   Co = Co(1: length(Co) - rm);
   
   function co = deinterleaver(ci)
      R  = reshape(ci, m, n);
      co = reshape(R', 1, sz);
   end
end
