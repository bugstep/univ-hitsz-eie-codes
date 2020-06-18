close all; clear all;

MINSNR = 1; MAXSNR = 12; ITEA = 1000;

for M = [2, 4, 16, 64]
   error = zeros(1, MAXSNR-MINSNR+1); 
   total = zeros(1, MAXSNR-MINSNR+1);
   
   [K, IQ, p, t] = get_args(M);
   Nc = 64; Nb = 64; N = log2(M) * Nc * Nb;
   
   h = waitbar(0, 'iterations', 'Name', [t ' 误码率仿真']);
   
   for SNR = MINSNR:MAXSNR
      for n = 1:ITEA
         Mi = randi(2, 1, N) - 1;     % 生成
         Mm = modulation(M, Mi);      % 调制
         Mt = ifft_cp(Mm, Nc);        % IFFT + CP
         
         Eb = sum(abs(Mm).^2) / length(Mi);
         Mr = channel_noise(Mt, SNR, Eb);
         
         Md = icp_fft(Mr, Nc);        % CP + FFT
         Mo = demodulation(M, Md);    % 解调

         error(SNR-MINSNR+1) = error(SNR-MINSNR+1) + sum(Mo ~= Mi);
         total(SNR-MINSNR+1) = total(SNR-MINSNR+1) + length(Mi);
      end
      waitbar((SNR-MINSNR+1) / (MAXSNR-MINSNR+1));
   end
   
   close(h);
   
   figure(1);       % 绘制星座图
   subplot(2, 2, p); 
   if p == 1
      plot(Mm, Mm .* 0, 'x');
   else
      plot(Mm, 'x');
   end
   xlim([-1.2 1.2]); ylim([-1.2 1.2]);
   grid on; xlabel('Re'); ylabel('Im');
   title([t ' 调制星座图']);
   
   figure(2);        % 绘制误码率
   BER = error ./ total;
   name = [t ' 调制误码率'];
   semilogy(MINSNR:MAXSNR, BER, 'o-', ...
            'DisplayName', name);
   hold on;
end

figure(2); hold off; grid on; 
legend('Location', 'southwest');
title('AWGN 信道误码率曲线');
xlabel('SNR (dB)'); ylabel('BER');
xlim([MINSNR MAXSNR]); ylim([1e-6 1]);
