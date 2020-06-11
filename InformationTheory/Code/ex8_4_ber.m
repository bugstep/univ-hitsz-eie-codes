function [BER_p, BER_h, BER_c, ...
          BER_1, BER_2, BER_3] = ex8_4_ber(M, SNR)
   g = [1, 0, 1; 1, 1, 1];
   P = [1, 1, 0; 1, 0, 1;
        0, 1, 1; 1, 1, 1;];
   [~, G, H] = ex6_init(P, false);
   
   % 未编码
   R = ex8_channel_noise(M, SNR);
   BER_p = sum(R ~= M) / length(M);
   
   % 汉明码
   C = ex6_encode(M, G, false);
   R = ex8_channel_noise(C, SNR);
   S = ex6_decode(R, H, false);
   S = S(1: length(M));
   BER_h = sum(S ~= M) / length(M);
   
   % 卷积码
   C = ex7_conv_encode(g, M);
   R = ex8_channel_noise(C, SNR);
   S = ex7_conv_decode(g, 1, R);
   BER_c = sum(S ~= M) / length(M);
   
   % 级联码
   [Tp, Tc, Tr, rmp, sr, rmr] = ...
                  ex8_concatenated_encoder(M);
               
   Cp = ex8_channel_noise(Tp, SNR);
   Cc = ex8_channel_noise(Tc, SNR);
   Cr = ex8_channel_noise(Tr, SNR);

   [Rp, Rc, Rr] = ex8_concatenated_decoder ...
                     (Cp, Cc, Cr, rmp, sr, rmr);
   BER_1 = sum(Rp ~= M) / length(M);
   BER_2 = sum(Rc ~= M) / length(M);
   BER_3 = sum(Rr ~= M) / length(M);
end
