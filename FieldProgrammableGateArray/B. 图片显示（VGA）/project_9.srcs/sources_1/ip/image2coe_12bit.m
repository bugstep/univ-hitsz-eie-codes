%mcode to create a coe file
%生成的数据是一行行进行读取的
clear
clc
src = imread('z.jpg');
R=src(:,:,1);
G=src(:,:,2);
B=src(:,:,3);

BW = rgb2gray(src);
[m,n] = size( BW );% m行 n列
% figure(1);
% imshow(src)
% figure(2);
% imshow(BW)
N = m*n;%%数据的长度，即存储器深度。
word_len = 8;%%每个单元的占据的位数，需自己设定
data = reshape(BW', 1, N);% 1行N列
R_data=reshape(R',1,N);
G_data=reshape(G',1,N);
B_data=reshape(B',1,N);
R_reduce=zeros(1,N);
G_reduce=zeros(1,N);
B_reduce=zeros(1,N);

for i=1:N
 temp=dec2bin(R_data(i),word_len);
 R_reduce(i)=uint8(bin2dec(temp(1:4)));
 temp=dec2bin(G_data(i),word_len);
 G_reduce(i)=uint8(bin2dec(temp(1:4)));
 temp=dec2bin(B_data(i),word_len);
 B_reduce(i)=uint8(bin2dec(temp(1:4)));
end

R_data2=reshape(R_reduce,n,m)';
G_data2=reshape(G_reduce,n,m)';
B_data2=reshape(B_reduce,n,m)';

RGB_reduce=zeros(m,n,3);
RGB_reduce(:,:,1)=R_data2*16+15;
RGB_reduce(:,:,2)=G_data2*16+15;
RGB_reduce(:,:,3)=B_data2*16+15;
RGB_reduce=uint8(RGB_reduce);

figure(1);
imshow(RGB_reduce);

%fid=fopen('gray_image.mif', 'w');%打开文件
fid=fopen('1.coe', 'wt');%打开文件
fprintf( fid, ';Height: %d, Wdith: %d\n\n', m, n);
fprintf(fid, 'MEMORY_INITIALIZATION_RADIX=2;\n');
fprintf(fid, 'MEMORY_INITIALIZATION_VECTOR=\n');

data2=[];
for i = 1 : N-1
    temp1=dec2bin(R_reduce(i),4);
    temp2=dec2bin(G_reduce(i),4);
    temp3=dec2bin(B_reduce(i),4);
    fprintf(fid,  '%s,\n', [temp1,temp2,temp3]);
end
temp1=dec2bin(R_reduce(i),4);
temp2=dec2bin(R_reduce(i),4);
temp3=dec2bin(R_reduce(i),4);
fprintf(fid, '%s;', [temp1,temp2,temp3]);%%输出结尾,每个数据后面用逗号(或者空格或者换行符)隔开，最后一个数据后面加分号
fclose(fid);%%关闭文件
