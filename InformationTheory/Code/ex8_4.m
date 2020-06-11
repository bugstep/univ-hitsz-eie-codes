% 级联编译码器

% 外编码器：汉明编码（7,4）  
% 内编码器：卷积编码（2,1,3）
%
% 交织器：分组交织（7,4）
%        卷积交织（4,7）
%        随机交织（N=28）


% 编解码测试

M = input("请输入信息序列：");  
% [1 1 0 0 1 0 1 1]

disp("==================")
fprintf("\n输入信息序列：%s\n", ...
   replace(num2str(M), ' ', ''));

[Tp, Tc, Tr, rmp, sr, rmr] = ...
   ex8_concatenated_encoder(M);

fprintf("\n分组交织编码：%s", ...
   replace(num2str(Tp), ' ', ''));
fprintf("\n卷积交织编码：%s", ...
   replace(num2str(Tc), ' ', ''));
fprintf("\n随机交织编码：%s\n", ...
   replace(num2str(Tr), ' ', ''));

[Rp, Rc, Rr] = ex8_concatenated_decoder ...
                  (Tp, Tc, Tr, rmp, sr, rmr);

fprintf("\n分组交织解码：%s", ...
   replace(num2str(Rp), ' ', ''));
fprintf("\n卷积交织解码：%s", ...
   replace(num2str(Rc), ' ', ''));
fprintf("\n随机交织解码：%s\n\n", ...
   replace(num2str(Rr), ' ', ''));


% 误码率仿真

N = 10000; MAXSNR = 4;
BER = zeros(MAXSNR+1, N, 6);
h = waitbar(0, 'iterations', ...
            'Name', '误码率仿真');

for i = 1:N   
   T = randi(2, 1, 400) - 1;

   for SNR = 0:MAXSNR
      [A, B, C, D, E, F] = ex8_4_ber(T, SNR);
      BER(SNR+1, i, :) = [A, B, C, D, E, F];
   end
   
   waitbar(i / N);
end

close(h);

semilogy(0:MAXSNR, mean(BER(:,:,1), 2), 'o-', ...
         0:MAXSNR, mean(BER(:,:,2), 2), 'o-', ...
         0:MAXSNR, mean(BER(:,:,3), 2), 'o-', ...
         0:MAXSNR, mean(BER(:,:,4), 2), 'o-', ...
         0:MAXSNR, mean(BER(:,:,5), 2), 'o-', ...
         0:MAXSNR, mean(BER(:,:,6), 2), 'o-');

title('AWGN 信道 BPSK 调制下的误码率曲线');
legend('未编码', '汉明码 (7,4)', '卷积码 (2,1,3)', ...
       '分组交织 (7,4)',  '卷积交织 (4,7)', '随机交织 (N=28)', ...
       'Location', 'southwest');

axis([0 4 1e-6 1]);
xlabel('SNR (dB)');
ylabel('BER');
grid on;
