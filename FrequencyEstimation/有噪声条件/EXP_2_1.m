%% EXP-2 有噪声的频率估计
%
clear all;
clc;
close all;
warning('off','all');
%
%% 单音正弦信号+噪声
%
A = 2; % 幅值
F = 100; % 频率
phi = 0; % 初相位
Fs = 4*F; % 采样频率为4倍最大频率
sim_num = 1000; % 蒙特卡罗法

% 考虑目标落入不同间隔位置时的性能
% 以64个信号周期为中心，向右辐射1/2个谱线间隔,向左辐射1/4个谱线间隔
n = [255,256,258];
%
% 考虑不同SNR下的性能
SNR = -2:1:10; % dB
%
%% 加窗
%
windows = ["矩形窗"; "哈明窗"; "汉宁窗"; "布莱克曼窗"];
window_select = [0, 2, 3, 4]; % 0.矩形窗，2.哈明窗，3.汉宁窗，4.布莱克曼窗
% 考虑不同窗的影响
est = zeros(sim_num, length(window_select), 3); % 估计结果储存
est_Rife = zeros(length(window_select),length(SNR),length(n)); % RMSE 储存
est_Jacobsen = zeros(length(window_select),length(SNR),length(n)); % RMSE 储存
est_Quinn_improved = zeros(length(window_select),length(SNR),length(n)); % RMSE 储存

%% 高斯噪声
for k = 1:length(SNR)
    for i = 1:length(n)
        for j = 1:sim_num
            N = n(i); % 采样点数
           for win_id = 1:length(window_select)
                win = window_select(win_id);
                [s_cont, t_cont, s, t, Sf, Sa, Fa] =...
                    Window(N, F, phi, SNR(k), 0, win, 0, 0); % 信号加窗
                [f_hat, f_Rife, f_Quinn, f_Jacobsen] = Estimate(F, s, Sf, win); % 频率估计

                % 估计结果误差计算
                est(j, win_id, 1) = (f_Rife - F).^2;
                est(j, win_id, 2) = (f_Quinn - F).^2;
                est(j, win_id, 3) = (f_Jacobsen - F).^2;
           end
        end
        % 数据处理，求解RMSE
        est_Rife(:,k,i) = (sqrt(mean(est(:, :, 1),1)))';
        est_Jacobsen(:,k,i) = (sqrt(mean(est(:, :, 3),1)))';
        est_Quinn_improved(:,k,i) = (sqrt(mean(est(:, :, 2),1)))';
    end
end

%% 绘制曲线
figure(1)
semilogy(SNR,est_Rife(1,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(2,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(3,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(4,:,1),'--o','linewidth',1.5);hold on;
title('加不同窗时的 Rife 算法估计精度对比(偏移1/4个谱线间隔；高斯噪声)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

figure(2)
semilogy(SNR,est_Jacobsen(1,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(2,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(3,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(4,:,1),'--o','linewidth',1.5);hold on;
title('加不同窗时的 Jacobsen 算法估计精度对比(偏移1/4个谱线间隔；高斯噪声)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

figure(3)
semilogy(SNR,est_Quinn_improved(1,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(2,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(3,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(4,:,1),'--o','linewidth',1.5);hold on;
title('加不同窗时的 改进Quinn 算法估计精度对比(偏移1/4个谱线间隔；高斯噪声)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

figure(4)
semilogy(SNR,est_Rife(1,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(2,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(3,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(4,:,2),'--o','linewidth',1.5);hold on;
title('加不同窗时的 Rife 算法估计精度对比(无偏移；高斯噪声)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

figure(5)
semilogy(SNR,est_Jacobsen(1,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(2,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(3,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(4,:,2),'--o','linewidth',1.5);hold on;
title('加不同窗时的 Jacobsen 算法估计精度对比(无偏移；高斯噪声)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

figure(6)
semilogy(SNR,est_Quinn_improved(1,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(2,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(3,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(4,:,2),'--o','linewidth',1.5);hold on;
title('加不同窗时的 改进Quinn 算法估计精度对比(无偏移；高斯噪声)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

figure(7)
semilogy(SNR,est_Rife(1,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(2,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(3,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(4,:,3),'--o','linewidth',1.5);hold on;
title('加不同窗时的 Rife 算法估计精度对比(偏移1/2个谱线间隔；高斯噪声)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

figure(8)
semilogy(SNR,est_Jacobsen(1,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(2,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(3,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(4,:,3),'--o','linewidth',1.5);hold on;
title('加不同窗时的 Jacobsen 算法估计精度对比(偏移1/2个谱线间隔；高斯噪声)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

figure(9)
semilogy(SNR,est_Quinn_improved(1,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(2,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(3,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(4,:,3),'--o','linewidth',1.5);hold on;
title('加不同窗时的 改进Quinn 算法估计精度对比(偏移1/2个谱线间隔；高斯噪声)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;


