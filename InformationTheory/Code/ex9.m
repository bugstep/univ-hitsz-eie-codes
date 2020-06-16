% turbo码

clear all; close all;

g = input("生成矢量：");  % [1, 1, 1; 0, 1, 1]
m = input("信息序列：");  % [1, 1, 0, 0, 1, 0, 1, 1]
s = input("交织映射：");  % [3 4 1 10 8 2 5 7 6 9]
e = input("删除矩阵：");  % [1, 0; 0, 1]

g = [1, 1, 1; 0, 1, 1];
m = [1, 1, 0, 0, 1, 0, 1, 1];
s = [3 4 1 10 8 2 5 7 6 9];
e = [1, 0; 0, 1];

[c, X1p, M] = ex9_rsc_encoder(g, m);

[U, ~] = ex9_interleaver_random_s(M, s);

[~, X2p, ~] = ex9_rsc_encoder(g, U);

X2p = X2p(1: length(X1p));

Xp = ex9_delete_concatenate(M, X1p, X2p, e);

R = ex9_channel_noise(Xp, 0);

C = ex9_turbo_decoder(R, g, s, 0, 1);

fprintf("\n输入序列： %s", num2str(m));
fprintf("\n RSC 码： %s", num2str(c));
fprintf("\nTurbo码： %s", num2str(Xp));
fprintf("\n解码结果： %s", num2str(C));

% 误码率仿真

input("\n\nBER仿真 -> ");
N = 10000; n = 100;
types = ["Log-MAP", "SOVA"];
h = waitbar(0, 'iterations', ...
            'Name', '误码率仿真');
         
BER = zeros(1, 4);
for snr = -3:0
   error = 0; total = 0;
   
   for i = 1:n
      T = randi(2, 1, N) - 1;    
      R = ex9_channel_noise(T, snr);
      C = R > 0;
      error = error + sum(C ~= T);
      total = total + length(T);
   end

   BER(snr+4) = error / total;
end

semilogy(-3:0, BER, '--', 'DisplayName', '未编码系统');
hold on;
      
for type = [0, 1]
   for itea = [1, 3, 5]
      for snr = -3:0
         error = 0; total = 0;
         
         for i = 1:n
            T = randi(2, 1, N) - 1;
   
            [~, X1p, M] = ex9_rsc_encoder(g, T);
            [U, s, ~] = ex9_interleaver_random(M, length(M));
            [~, X2p, ~] = ex9_rsc_encoder(g, U);
            X2p = X2p(1: length(X1p));
            Xp = ex9_delete_concatenate(M, X1p, X2p, e);
            R = ex9_channel_noise(Xp, snr);
            C = ex9_turbo_decoder(R, g, s, type, itea);

            error = error + sum(C ~= T);
            total = total + length(T);
         end
         
         BER(snr+4) = error / total;
      end
      
      name = [convertStringsToChars(types(type+1)) ...
              ', ' num2str(itea) ' iterations'];
           
      semilogy(-3:0, BER, 'o-', 'DisplayName', name);
      hold on; waitbar((itea+1) / 2 * (type+1) / 6);
   end
end

close(h); hold off; grid; 
legend('Location', 'southwest');
title('AWGN 信道 BPSK 调制下的误码率曲线');
xlabel('SNR (dB)'); ylabel('BER');
