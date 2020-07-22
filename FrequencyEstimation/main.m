% 频率估计（以4倍最高频率采样为例）
%       考虑不同窗的影响（至少4种窗函数）
% Todo1 考虑目标落入不同间隔位置时的性能
%       考虑不同SNR下的性能（注意SNR的计算）
% Todo2 考虑不同干扰类型的性能（如：干扰与目标的相对位置）
% Todo3 考虑噪声/干扰服从不同概率分布函数的性能 
%       考虑不同方法的性能
%       要求给出上述不同情况下各种方法的性能比较与分析结果
%       评价指标：如RMSE, 均值等

% P.S.
% *** Jacobsen_F_Estimator 里面的case改了值 ***
%
% 1. 这个应该好做
% 2. 干扰类型？相对位置？咋弄？
% 3. 先double check一下高斯噪声我写对了吗。。。


% DFT_improved_F_Estimator 有bug

% 10, 10, 10, 10
% 10, 9.81057, 10.1893, 10
% 10, 9.78843, NaN, 10
% 10, 9.76436, NaN, 10

% Array indices must be positive integers or logical values.
% 
% Error in DFT_improved_F_Estimator (line 11)
% a1 = real(Sn(index(1)-1)/Sn(index(1)));

N = 100; Mo = 64; Fo = 10; PHIo = 0; SNRo = 0; To = 0; WINo = 0; Bo = 0; Vo = 0; % 默认参数

windows = ["矩形窗"; "哈明窗"; "汉宁窗"; "布莱克曼窗"];
window_select = [0, 2, 3, 4];          % 0.矩形窗，2.哈明窗，3.汉宁窗，4.布莱克曼窗
snr_select    = [0, 100, 50, 20, 10, 5, 2, 1];       % 0.无噪声

% 考虑不同窗的影响
disp('考虑不同窗的影响')
est = zeros(N, length(window_select), 3);

for cnt = 1:N
   for win_ind = 1:length(window_select)
      win = window_select(win_ind);
      [s_cont, t_cont, s, t, Sf, Sa, Fa] = sample(Mo, Fo, PHIo, SNRo, To, win, Bo, Vo);
      [f_hat, f_Rife, f_Quinn, f_Jacobsen] = estimate(Fo, s, Sf, win);
      
      est(cnt, win_ind, 1) = f_Rife;
      est(cnt, win_ind, 2) = f_Quinn;
      est(cnt, win_ind, 3) = f_Jacobsen;
   end
end

mean_Rife = mean(est(:,:,1))
mean_Quinn = mean(est(:,:,2))
mean_Jacobsen = mean(est(:,:,3))

rmse_Rife = sqrt(mean((est(:,:,1) - Fo) .^ 2))
rmse_Quinn = sqrt(mean((est(:,:,2) - Fo) .^ 2))
rmse_Jacobsen = sqrt(mean((est(:,:,3) - Fo) .^ 2))


% 考虑不同SNR下的性能
disp('考虑不同SNR下的性能（高斯）')

est = zeros(N, length(snr_select), 3);

for cnt = 1:N
   for snr_ind = 1:length(snr_select)
      snr = snr_select(snr_ind);
      [s_cont, t_cont, s, t, Sf, Sa, Fa] = sample(Mo, Fo, PHIo, snr, To, WINo, Bo, Vo);
      [f_hat, f_Rife, f_Quinn, f_Jacobsen] = estimate(Fo, s, Sf, WINo);
      
      est(cnt, snr_ind, 1) = f_Rife;
      est(cnt, snr_ind, 2) = f_Quinn;
      est(cnt, snr_ind, 3) = f_Jacobsen;
   end
end

mean_Rife = mean(est(:,:,1))
mean_Quinn = mean(est(:,:,2))
mean_Jacobsen = mean(est(:,:,3))

rmse_Rife = sqrt(mean((est(:,:,1) - Fo) .^ 2))
rmse_Quinn = sqrt(mean((est(:,:,2) - Fo) .^ 2))
rmse_Jacobsen = sqrt(mean((est(:,:,3) - Fo) .^ 2))

% 考虑不同SNR下的性能
disp('考虑不同SNR下的性能（瑞利）')

est = zeros(N, length(snr_select), 3);

for cnt = 1:N
   for snr_ind = 1:length(snr_select)
      snr = snr_select(snr_ind);
      [s_cont, t_cont, s, t, Sf, Sa, Fa] = sample(Mo, Fo, PHIo, snr, 1, WINo, Bo, Vo);
      [f_hat, f_Rife, f_Quinn, f_Jacobsen] = estimate(Fo, s, Sf, WINo);
      
      est(cnt, snr_ind, 1) = f_Rife;
      est(cnt, snr_ind, 2) = f_Quinn;
      est(cnt, snr_ind, 3) = f_Jacobsen;
   end
end

mean_Rife = mean(est(:,:,1))
mean_Quinn = mean(est(:,:,2))
mean_Jacobsen = mean(est(:,:,3))

rmse_Rife = sqrt(mean((est(:,:,1) - Fo) .^ 2))
rmse_Quinn = sqrt(mean((est(:,:,2) - Fo) .^ 2))
rmse_Jacobsen = sqrt(mean((est(:,:,3) - Fo) .^ 2))

% 考虑不同干扰类型的性能
disp('考虑不同干扰类型的性能')
est = zeros(N, 10, 3);

for cnt = 1:N
   for b = 1:10
      [s_cont, t_cont, s, t, Sf, Sa, Fa] = sample(Mo, Fo, PHIo, SNRo, To, WINo, b/10, 0.2);
      [f_hat, f_Rife, f_Quinn, f_Jacobsen] = estimate(Fo, s, Sf, WINo);
      
      est(cnt, b, 1) = f_Rife;
      est(cnt, b, 2) = f_Quinn;
      est(cnt, b, 3) = f_Jacobsen;
   end
end

mean_Rife = mean(est(:,:,1))
mean_Quinn = mean(est(:,:,2))
mean_Jacobsen = mean(est(:,:,3))

rmse_Rife = sqrt(mean((est(:,:,1) - Fo) .^ 2))
rmse_Quinn = sqrt(mean((est(:,:,2) - Fo) .^ 2))
rmse_Jacobsen = sqrt(mean((est(:,:,3) - Fo) .^ 2))





% ====================================================== %
figure;
window_select = [0, 2];
snr_select    = [1, 3, 5, 7, 9];
for win_ind = 1:length(window_select)
   est = zeros(N, length(snr_select), 3);
   win = window_select(win_ind);

   for cnt = 1:N
      for snr_ind = 1:length(snr_select)
         snr = snr_select(snr_ind);
         [s_cont, t_cont, s, t, Sf, Sa, Fa] = sample(Mo, Fo, PHIo, snr, To, win, Bo, Vo);
         [f_hat, f_Rife, f_Quinn, f_Jacobsen] = estimate(Fo, s, Sf, win);

         est(cnt, snr_ind, 1) = f_Rife;
         est(cnt, snr_ind, 2) = f_Quinn;
         est(cnt, snr_ind, 3) = f_Jacobsen;
      end
   end

   mean_Rife = mean(est(:,:,1));
   mean_Quinn = mean(est(:,:,2));
   mean_Jacobsen = mean(est(:,:,3));

   rmse_Rife = sqrt(mean((est(:,:,1) - Fo) .^ 2));
   rmse_Quinn = sqrt(mean((est(:,:,2) - Fo) .^ 2));
   rmse_Jacobsen = sqrt(mean((est(:,:,3) - Fo) .^ 2));

   plot(snr_select, rmse_Rife, 'o-', 'DisplayName', ...
      ['Rife, ' convertStringsToChars(windows(win_ind))]); hold on;
   plot(snr_select, rmse_Quinn, 'o-', 'DisplayName', ...
      ['Quinn, ' convertStringsToChars(windows(win_ind))]); hold on;
   plot(snr_select, rmse_Jacobsen, 'o-', 'DisplayName', ...
      ['Jacobsen, ' convertStringsToChars(windows(win_ind))]); hold on;
end

hold off; grid; 
legend('Location', 'best');
xlabel('SNR'); ylabel('RMSE');
