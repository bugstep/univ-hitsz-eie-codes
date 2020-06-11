function [Tp, Tc, Tr, rmp, sr, rmr] = ...
   ex8_concatenated_encoder(M)
   % 外编码器：汉明编码（7,4）  
   % 内编码器：卷积编码（2,1,3）
   %
   % 交织器：1.分组交织（7,4）
   %        2.卷积交织（4,7）
   %        3.随机交织（N=28）

   % 外编码器
   P = [1, 1, 0; 1, 0, 1;
        0, 1, 1; 1, 1, 1;];
   [~, G, ~] = ex6_init(P, false);
   C = ex6_encode(M, G, false);
   
   % 交织器
   m = 7; n = 4; B = 4; M = 7; N = 28;
   [Cp, rmp] = ex8_interleaver_packet(C, m, n);
   [Cc] = ex8_interleaver_convolutional(C, B, M);
   [Cr, sr, rmr] = ex8_interleaver_random(C, N);
   
   % 内编码器
   g = [1, 0, 1; 1, 1, 1];
   Tp = ex7_conv_encode(g, Cp);
   Tc = ex7_conv_encode(g, Cc);
   Tr = ex7_conv_encode(g, Cr);
end
