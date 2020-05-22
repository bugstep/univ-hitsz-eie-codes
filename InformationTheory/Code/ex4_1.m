% 哈夫曼编码

Ps = input("输入离散信源概率分布：");
% [0.15 0.19 0.10 0.17 0.01 0.18 0.20]

[dict, len] = huffmandict(1:length(Ps), Ps);

for i = 1:length(Ps)
   d = dict(i, 2);
   d = d{1};
   
   code = "";
   for c = d
      code = code + c;
   end
   
   fprintf("信源符号：%d，符号概率：%.3f，码长：%d，码字：%s\n", ...
      i, Ps(i), strlength(code), code);
end

H = sum(-Ps .* log2(Ps));
eta = H / len;
fprintf("\n信源信息熵：%.3f，平均码长：%.3f，编码效率：%.4f\n\n", H, len, eta);
