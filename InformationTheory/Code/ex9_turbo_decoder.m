function msghat = ex9_turbo_decoder(encoder_out,G,interleaver,dec_alg,niter)
% Turbo码译码器

% 输入
% encoder_out：Turbo码的编码输出经过BPSK调制后的信息
% G：RSC码的生成矩阵
% interleaver：交织映射表
% dec_alg：选择译码算法，0为Log-MAP算法，1为SOVA算法
% niter：译码迭代次数
% 输出
% msghat：Turbo码的译码输出

[~,K] = size(G);            % n为每个输入比特对应的输出比特数，K为SRC码的约束长度
m = K-1;                    % m为编码器中移位寄存器的个数
L_total = length(encoder_out)/2;
yk = zeros(2,2*L_total);    %每个分量码的译码输入

% 解复用，生成每个分量译码器的译码输入数据
y_sys = encoder_out(1:2:end);
yk(1,1:2:end) = y_sys;
yk(1,2:4:end) = encoder_out(2:4:end);
yk(2,1:2:end) = y_sys(interleaver);
yk(2,4:4:end) = encoder_out(4:4:end);

L_e = zeros(1,L_total);      % 初始化外部信息矢量
L_a = zeros(1,L_total);
msghat = zeros(1,L_total);

for iter = 1:niter
    % 第1个分量译码器
    L_a(interleaver) = L_e;             % 先验信息
    if dec_alg == 0
        L_all = ex9_logmap(yk(1,:),G,L_a,1);        % Log-MAP算法
    else
        L_all = ex9_sova(yk(1,:),G,L_a,1);          % SOVA算法
    end
    L_e = L_all-2*yk(1,1:2:2*L_total)-L_a;       % 计算外部信息
            
    % 第2个分量译码器
    L_a = L_e(interleaver);             % 先验信息
    if dec_alg == 0
        L_all = ex9_logmap(yk(2,:),G,L_a,2);        % Log-MAP算法
    else
        L_all = ex9_sova(yk(2,:),G,L_a,2);          % SOVA算法
    end
    L_e = L_all-2*yk(2,1:2:2*L_total)-L_a;       % 计算外部信息
            
    %估计信息比特的值
    msghat(interleaver) = (sign(L_all)+1)/2;
end
msghat=msghat(1:length(msghat)-m);

end
