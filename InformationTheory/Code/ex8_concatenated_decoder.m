function [Rp, Rc, Rr] = ...
   ex8_concatenated_decoder ...
      (Tp, Tc, Tr, rmp, sr, rmr)
   % 外编码器：汉明编码（7,4）  
   % 内编码器：卷积编码（2,1,3）
   %
   % 交织器：1.分组交织（7,4）
   %        2.卷积交织（4,7）
   %        3.随机交织（N=28）
   
   % 内编码器
   g = [1, 0, 1; 1, 1, 1];
   Sp = ex7_conv_decode(g, 1, Tp);
   Sc = ex7_conv_decode(g, 1, Tc);
   Sr = ex7_conv_decode(g, 1, Tr);
   
   % 交织器
   m = 7; n = 4; B = 4; M = 7;
   Cp = ex8_deinterleaver_packet(Sp, rmp, m, n);
   Cc = ex8_deinterleaver_convolutional(Sc, B, M);
   Cr = ex8_deinterleaver_random(Sr, sr, rmr);

   % 外编码器
   P = [1, 1, 0; 1, 0, 1;
        0, 1, 1; 1, 1, 1;];
   [~, ~, H] = ex6_init(P, false);
   Rp = ex6_decode(Cp, H, false);
   Rc = ex6_decode(Cc, H, false);
   Rr = ex6_decode(Cr, H, false);
end
