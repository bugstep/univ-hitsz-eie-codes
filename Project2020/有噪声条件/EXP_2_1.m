%% EXP-2 ��������Ƶ�ʹ���
%
clear all;
clc;
close all;
warning('off','all');
%
%% ���������ź�+����
%
A = 2; % ��ֵ
F = 100; % Ƶ��
phi = 0; % ����λ
Fs = 4*F; % ����Ƶ��Ϊ4�����Ƶ��
sim_num = 1000; % ���ؿ��޷�

% ����Ŀ�����벻ͬ���λ��ʱ������
% ��64���ź�����Ϊ���ģ����ҷ���1/2�����߼��,�������1/4�����߼��
n = [255,256,258];
%
% ���ǲ�ͬSNR�µ�����
SNR = -2:1:10; % dB
%
%% �Ӵ�
%
windows = ["���δ�"; "������"; "������"; "����������"];
window_select = [0, 2, 3, 4]; % 0.���δ���2.��������3.��������4.����������
% ���ǲ�ͬ����Ӱ��
est = zeros(sim_num, length(window_select), 3); % ���ƽ������
est_Rife = zeros(length(window_select),length(SNR),length(n)); % RMSE ����
est_Jacobsen = zeros(length(window_select),length(SNR),length(n)); % RMSE ����
est_Quinn_improved = zeros(length(window_select),length(SNR),length(n)); % RMSE ����

%% ��˹����
for k = 1:length(SNR)
    for i = 1:length(n)
        for j = 1:sim_num
            N = n(i); % ��������
           for win_id = 1:length(window_select)
                win = window_select(win_id);
                [s_cont, t_cont, s, t, Sf, Sa, Fa] =...
                    Window(N, F, phi, SNR(k), 0, win, 0, 0); % �źżӴ�
                [f_hat, f_Rife, f_Quinn, f_Jacobsen] = Estimate(F, s, Sf, win); % Ƶ�ʹ���

                % ���ƽ��������
                est(j, win_id, 1) = (f_Rife - F).^2;
                est(j, win_id, 2) = (f_Quinn - F).^2;
                est(j, win_id, 3) = (f_Jacobsen - F).^2;
           end
        end
        % ���ݴ������RMSE
        est_Rife(:,k,i) = (sqrt(mean(est(:, :, 1),1)))';
        est_Jacobsen(:,k,i) = (sqrt(mean(est(:, :, 3),1)))';
        est_Quinn_improved(:,k,i) = (sqrt(mean(est(:, :, 2),1)))';
    end
end

%% ��������
figure(1)
semilogy(SNR,est_Rife(1,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(2,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(3,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(4,:,1),'--o','linewidth',1.5);hold on;
title('�Ӳ�ͬ��ʱ�� Rife �㷨���ƾ��ȶԱ�(ƫ��1/4�����߼������˹����)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

figure(2)
semilogy(SNR,est_Jacobsen(1,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(2,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(3,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(4,:,1),'--o','linewidth',1.5);hold on;
title('�Ӳ�ͬ��ʱ�� Jacobsen �㷨���ƾ��ȶԱ�(ƫ��1/4�����߼������˹����)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

figure(3)
semilogy(SNR,est_Quinn_improved(1,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(2,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(3,:,1),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(4,:,1),'--o','linewidth',1.5);hold on;
title('�Ӳ�ͬ��ʱ�� �Ľ�Quinn �㷨���ƾ��ȶԱ�(ƫ��1/4�����߼������˹����)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

figure(4)
semilogy(SNR,est_Rife(1,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(2,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(3,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(4,:,2),'--o','linewidth',1.5);hold on;
title('�Ӳ�ͬ��ʱ�� Rife �㷨���ƾ��ȶԱ�(��ƫ�ƣ���˹����)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

figure(5)
semilogy(SNR,est_Jacobsen(1,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(2,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(3,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(4,:,2),'--o','linewidth',1.5);hold on;
title('�Ӳ�ͬ��ʱ�� Jacobsen �㷨���ƾ��ȶԱ�(��ƫ�ƣ���˹����)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

figure(6)
semilogy(SNR,est_Quinn_improved(1,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(2,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(3,:,2),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(4,:,2),'--o','linewidth',1.5);hold on;
title('�Ӳ�ͬ��ʱ�� �Ľ�Quinn �㷨���ƾ��ȶԱ�(��ƫ�ƣ���˹����)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

figure(7)
semilogy(SNR,est_Rife(1,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(2,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(3,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Rife(4,:,3),'--o','linewidth',1.5);hold on;
title('�Ӳ�ͬ��ʱ�� Rife �㷨���ƾ��ȶԱ�(ƫ��1/2�����߼������˹����)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

figure(8)
semilogy(SNR,est_Jacobsen(1,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(2,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(3,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Jacobsen(4,:,3),'--o','linewidth',1.5);hold on;
title('�Ӳ�ͬ��ʱ�� Jacobsen �㷨���ƾ��ȶԱ�(ƫ��1/2�����߼������˹����)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

figure(9)
semilogy(SNR,est_Quinn_improved(1,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(2,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(3,:,3),'--o','linewidth',1.5);hold on;
semilogy(SNR,est_Quinn_improved(4,:,3),'--o','linewidth',1.5);hold on;
title('�Ӳ�ͬ��ʱ�� �Ľ�Quinn �㷨���ƾ��ȶԱ�(ƫ��1/2�����߼������˹����)','FontWeight','bold');
xlabel('SNR(dB)','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;


