close all

% 第一部分：二元信源熵函数曲线

p = 0:.001:1;
H = - p .* log2(p) - (1-p) .* log2(1-p);

plot(p, H);
grid on
xlabel('p')
ylabel('H');
title('二元信源熵函数曲线');


% 第二部分：图像一维熵的计算

img1A = imread('./src/ex1/airplane_768KB_512x512.bmp');
img1B = imread('./src/ex1/lena_768KB_512x512.bmp');

img2A = imread('./src/ex1/fruits_132KB_256x256.png');
img2B = imread('./src/ex1/fruits_461KB_512x512.png');

img = img1A;
H = imgH(img);
fprintf('airplane_768KB_512x512.bmp: %g\n', H)

img = img1B;
H = imgH(img);
fprintf('lena_768KB_512x512.bmp:     %g\n', H)

img = img2A;
H = imgH(img);
fprintf('fruits_132KB_256x256.png:   %g\n', H)

img = img2B;
H = imgH(img);
fprintf('fruits_461KB_512x512.png:   %g\n', H)

function H = imgH(img)
   figure; imshow(img);
   % disp(size(img));
   
   img_gray = rgb2gray(img);
   figure; imshow(img_gray);
   % disp(size(img_gray));
   
   s = numel(img_gray);
   
   H = 0;
   for i = 0:255
      p = length(find(img_gray == i)) / s;
      if p > 0
         H = H - p * log2(p);
      end
   end
end
