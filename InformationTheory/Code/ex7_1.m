clear all; close all;

% 第一部分：(2,1,3)卷积码的编译码

g = [1, 0, 1; 1, 1, 1];
M = input("请输入信息序列：");  
% [1 1 0 0 1 0 1 1]

fprintf("\n信息序列：%s", ...
   replace(num2str(M), ' ', ''));

C = ex7_conv_encode(g, M);
fprintf("\n编码结果：%s", ...
   replace(num2str(C), ' ', ''));

S = ex7_conv_decode(g, 1, C);
fprintf("\n解码结果：%s\n\n", ...
   replace(num2str(S), ' ', ''));

% 第二部分：(2,1,3)卷积码的误码率

P = [1, 1, 0;
     1, 0, 1;
     0, 1, 1;
     1, 1, 1;];

N = 1000;
BER_1 = zeros(5, N);
BER_2 = zeros(5, N);
BER_3 = zeros(5, N);

h = waitbar(0, 'iterations', ...
   'Name', '(2,1,3)卷积码的误码率');

for i = 1:N   
   T = randi(2, 1, 1e4) - 1;

   for SNR = 0:4
      [BER_1(SNR+1, i), ...
       BER_2(SNR+1, i), ...
       BER_3(SNR+1, i)] = ...
         ex7_ber(T, SNR, P, g);
   end
   
   waitbar(i / N);
end

close(h);

% 第三部分：(2,1,5)卷积码的误码率

g = [1, 0, 0, 1, 1; 1, 1, 1, 0 ,1];

BER_4 = zeros(5, N);
h = waitbar(0, 'iterations', ...
   'Name', '(2,1,5)卷积码的误码率');

for i = 1:N   
   T = randi(2, 1, 1e4) - 1;

   for SNR = 0:4
      [BER_1(SNR+1, i), ...
       BER_2(SNR+1, i), ...
       BER_4(SNR+1, i)] = ...
         ex7_ber(T, SNR, P, g);
   end
   
   waitbar(i / N);
end

close(h);

% 第四部分：(3,1,3)卷积码的误码率

g = [1, 0, 1; 1, 1, 1; 1, 1, 1];

BER_5 = zeros(5, N);
h = waitbar(0, 'iterations', ...
   'Name', '(3,1,3)卷积码的误码率');

for i = 1:N   
   T = randi(2, 1, 1e4) - 1;

   for SNR = 0:4
      [BER_1(SNR+1, i), ...
       BER_2(SNR+1, i), ...
       BER_5(SNR+1, i)] = ...
         ex7_ber(T, SNR, P, g);
   end
   
   waitbar(i / N);
end

close(h);

semilogy(0:4, mean(BER_1, 2), 'o-', ...
         0:4, mean(BER_2, 2), 'o-', ...
         0:4, mean(BER_3, 2), 'o-', ...
         0:4, mean(BER_4, 2), 'o-', ...
         0:4, mean(BER_5, 2), 'o-');

title('AWGN 信道 BPSK 调制下的误码率曲线');
legend('未编码', '汉明码', '卷积码 (2,1,3)', ...
       '卷积码 (2,1,5)',  '卷积码 (3,1,3)', ...
       'Location', 'southwest');

axis([0 4 1e-6 1]);
xlabel('SNR (dB)');
ylabel('BER');
grid on;
