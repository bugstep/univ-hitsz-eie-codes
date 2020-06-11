function Co = ex8_deinterleaver_convolutional(Ct, B, M)
   Lt = length(Ct); Lo = Lt - M * B * (B - 1);
   Co = zeros(1, Lo);
   
   for i = 1:Lt
      delay = M * B * (B - mod(i-1, B) - 1);
      tg = i + delay - M * B * (B - 1);
      if tg > 0
         Co(tg) = Ct(i);
      end
   end

   Co = Co(1:Lo);
end
