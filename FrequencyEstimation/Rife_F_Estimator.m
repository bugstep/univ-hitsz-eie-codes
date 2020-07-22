function fe = Rife_F_Estimator(Sn,fs,N)
%RIFE_F_ESTIMATOR
%   ����SnΪ����õĽ����ź�Ƶ�׷�ֵ����
%   fs������Ƶ��
%   N����������
[A,index] = sort(Sn,'descend');
a = A(2)/A(1);
d = a/(1+a);
if(index(1)>index(2))
    delta = -d;
else
    delta = d;
end
    fe = (index(1)-1+delta)*fs/N;
end

