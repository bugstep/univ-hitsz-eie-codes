% 哈夫曼编码
%
% Reference
% https://zh.wikipedia.org/wiki/%E9%A6%99%E5%86
   %9C-%E8%8C%83%E8%AF%BA%E7%BC%96%E7%A0%81#%E5
   %93%88%E5%A4%AB%E6%9B%BC%E7%AE%97%E6%B3%95

% % % % % % % % % % % % % % % % % % %
%
%  struct node {
%     
%     node.p         // 概率分布
%     
%     node.O         // 左子节点
%     node.I         // 右子节点
%     
%     node.hasChild  // 是否叶子节点
%     node.hasValue  // 叶子节点符号
%  }
%
% % % % % % % % % % % % % % % % % % %

Ps = input("输入离散信源概率分布：");
% [0.15 0.19 0.10 0.17 0.01 0.18 0.20]

for i = 1:length(Ps)
   node.p = Ps(i);
   node.O = false;
   node.I = false;
   node.hasChild = false;
   node.hasValue = i;
   nodes(i) = node;
end

% 构建二叉树

while length(nodes) > 1
   min_1i = 1; min_1p = nodes(1).p;
   min_2i = 2; min_2p = nodes(2).p;
   
   [min_1i, min_1p, min_2i, min_2p] ...
      = swap(min_1i, min_1p, min_2i, min_2p);
   
   for i = 3:length(nodes)
      if min_2p > nodes(i).p
         min_2i = i; min_2p = nodes(i).p;
      end
      
      [min_1i, min_1p, min_2i, min_2p] ...
         = swap(min_1i, min_1p, min_2i, min_2p);
   end
   
   node.p = min_1p + min_2p;
   node.O = nodes(min_2i);
   node.I = nodes(min_1i);
   node.hasChild = true;
   node.hasValue = false;
   
   nodes(min_1i) = node;
   nodes(min_2i) = [];
end

% 遍历二叉树

ss = [""];
search(node, "");

len = 0;

for i = 1:length(Ps)
   p = Ps(i);
   c = ss(i);
   
   l = strlength(c);
   len = len + p * l;
   
   fprintf("信源符号：%d，符号概率：%.3f，码长：%d，码字：%s\n", i, p, l, c);
end

H = sum(-Ps .* log2(Ps));
eta = H / len;
fprintf("\n信源信息熵：%.3f，平均码长：%.3f，编码效率：%.4f\n\n", H, len, eta);

function [min_1i, min_1p, min_2i, min_2p] ...
   = swap(min_1i, min_1p, min_2i, min_2p)
   if min_1p > min_2p
      min_ti = min_1i; min_tp = min_1p;
      min_1i = min_2i; min_1p = min_2p;
      min_2i = min_ti; min_2p = min_tp;
   end
end

function search(node, s)
   global ss;
   if node.hasChild == false
   %  fprintf("%d, %s\n" , node.hasValue, s);
      ss(node.hasValue) = s;
   else
      search(node.I, s + "1");
      search(node.O, s + "0");
   end
end
