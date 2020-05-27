% (7,4) 汉明码

P = [1, 1, 0;
     1, 0, 1;
     0, 1, 1;
     1, 1, 1;];
  
[P, G, H] = ex6_init(P);

% 一、编码

M = input("========\n输入信息序列：");
% [1 0 1 1 0 1 0 1 1 0]

fprintf("\n\n输入序列：%s\n\n========\n", ...
   replace(num2str(M), ' ', ''));

C = ex6_encode(M, G);

fprintf("\n\n编码结果：%s\n\n", ...
   replace(num2str(C), ' ', ''));

% 二、解码

for n = 0:2
   fprintf("========\n错误个数：%d\n", n);
   
   R = ex6_noise(C, n);
   fprintf("\n\n接收序列：%s\n", ...
      replace(num2str(R), ' ', ''));
   
   S = ex6_decode(R, H);
   fprintf("\n\n解码结果：%s\n\n", ...
      replace(num2str(S), ' ', ''));
end

% 三、误码率曲线

if input("绘制误码率曲线？ > ") ~= 1
   return
end

N = 10;
BER_1 = zeros(11, N);
BER_2 = zeros(11, N);

h = waitbar(0, 'iterations');

for i = 1:N   
   T = randi(2, 1, 1e7) - 1;

   for SNR = 0:10
      [BER_1(SNR+1, i), ...
       BER_2(SNR+1, i)] = ...
         ex6_ber(T, SNR, P);
   end
   
   waitbar(i / N);
end

close(h);

semilogy(0:10, mean(BER_1, 2), 'o-', ...
         0:10, mean(BER_2, 2), 'o-');

title('AWGN 信道 BPSK 调制下的误码率曲线');
legend('未编码', '汉明码');
axis([0 10 1e-7 1]);
xlabel('SNR (dB)');
ylabel('BER');
grid on;
