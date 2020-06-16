function [output,state] = ex9_encode_bit(G,input,state)
% ���ݵ�������������ɾ���ϵ���Լ���ǰ״̬ʸ�����б��룬����������

% ����
% G��RSC������ɾ���
% input��������������
% state����������ͼ��״̬ʸ��
% ���
% output���������
% state�����º��״̬ʸ��

[n,k] = size(G);        % nΪÿ��������ض�Ӧ�������������kΪRSC���Լ������
m = k-1;                % mΪ����������λ�Ĵ����ĸ���

% ������һ��������أ�ÿ��������ر������n�����أ�
output = zeros(1,n);
for i = 1:n
    output(i) = G(i,1)*input;
    for j = 2:k
        output(i) = xor(output(i),G(i,j)*state(j-1));
    end
end

% ����״̬ʸ��
state = [input, state(1:m-1)];      

end
