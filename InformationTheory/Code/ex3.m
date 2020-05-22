% 香农编码

Ps = input("输入离散信源概率分布：");
% [.25 .15 .20 .05 .10 .25]

index = 1:length(Ps);

for i = 1:length(Ps)
   maximun = i;
   for j = i+1:length(Ps)
      if Ps(maximun) < Ps(j)
         maximun = j;
      end
   end
   tmp = Ps(i);
   Ps(i) = Ps(maximun);
   Ps(maximun) = tmp;
   
   tmp = index(i);
   index(i) = index(maximun);
   index(maximun) = tmp;
end

disp([index; Ps]);

p = 0.;
len = 0;

for j = 1:length(Ps)
   x = Ps(j);
   i = index(j);
   l = ceil(-log2(x));
   t = binF(p, l);
   
   fprintf("信源符号：%d，符号概率：%.3f，累加概率：%.3f，码长：%d，码字：%s\n", ...
      i, x, p, l, t);
   p = p + x;
   len = len + x * l;
end

H = sum(-Ps .* log2(Ps));
eta = H / len;
fprintf("\n信源信息熵：%.3f，平均码长：%.3f，编码效率：%.4f\n\n", H, len, eta);

function s = binF(number, digits)
   s = ""; number = number - floor(number);
   
   while strlength(s) < digits
      number = number * 2;
      if number < 1
         s = s + "0";
      else
         s = s + "1";
         number = number - 1;
      end
   end
end
