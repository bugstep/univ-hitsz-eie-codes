function [next_out, next_state, last_out, last_state] = ex9_trellis(G)
% ����ͼ������������Log-MAP�㷨�б�����

% ����
% G��RSC������ɾ��󣨶�Ԫ��ʽ��
% ���
% next_out(i,1:2)������input=0��״̬state=iʱ����һ�������ϵͳ���أ�У����أ�
% next_out(i,3:4)������input=1��״̬state=iʱ����һ�������ϵͳ���أ�У����أ�
% next_state(i,1)������input=0��״̬state=iʱ����ͼת�Ƶ�����һ״̬
% next_state(i,2)������input=1��״̬state=iʱ����ͼת�Ƶ�����һ״̬
% last_out(i,1:2)������input=0��״̬state=iʱ��ǰһ�������ϵͳ���أ�У����أ�
% last_out(i,3:4)������input=1��״̬state=iʱ��ǰһ�������ϵͳ���أ�У����أ�
% next_state(i,1)������input=0��״̬state=iʱ����ͼת�Ƶ���ǰһ״̬
% next_state(i,2)������input=1��״̬state=iʱ����ͼת�Ƶ���ǰһ״̬

[~,K] = size(G);        % nΪÿ��������ض��ڵ������������KΪRSC���Լ������
m = K - 1;              % mΪ����������λ�Ĵ����ĸ���
max_state = 2^m;        % ��������ͼ��״̬��

% ��������ͼ��ÿ��״̬��ϵͳ���next_out��next_state����
for state=1:max_state
   state_vector = ex9_dec2bin( state-1, m );
   
   % ����ֵΪ0�Ĵ���
%    d_k = 0;
   a_k = rem( G(1,:)*[0 state_vector]', 2 );
   [out_0, state_0] = ex9_encode_bit(G, a_k, state_vector);
   out_0(1) = 0;
  
   % ����ֵΪ1�Ĵ���
%    d_k = 1;
   a_k = rem( G(1,:)*[1 state_vector]', 2 );
   [out_1, state_1] = ex9_encode_bit(G, a_k, state_vector);
   out_1(1) = 1;
   next_out(state,:) = 2*[out_0 out_1]-1;
   next_state(state,:) = [(ex9_bin2dec(state_0)+1) (ex9_bin2dec(state_1)+1)];
end

% �ҳ�ת�Ƶ���ǰ״̬��ǰ����״̬
last_state = zeros(max_state,2);
last_out = zeros(max_state,2);
for bit=0:1
   for state=1:max_state
      last_state(next_state(state,bit+1), bit+1)=state;
      last_out(next_state(state, bit+1), bit*2+1:bit*2+2) = next_out(state, bit*2+1:bit*2+2);
   end 
end

end
