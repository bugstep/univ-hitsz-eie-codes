% LZW 编码

Si = char(input("输入字符串："));  % 'abcbcabcabcd'

table = containers.Map('KeyType', 'char', 'ValueType', 'int8');

for i = Si
   if ~ isKey(table, i)
      table(i) = length(table) + 1;
   end
end

fprintf("\n初始字典\n");
for key = table.keys()
   fprintf("%s:%d, ", string(key{1}), table(key{1}));
end

fprintf("\b\b\n\n");

So = []; P = '';

for C = Si
   PC = [P C];
   
   if ~ isKey(table, PC)
      table(PC) = length(table) + 1;
      
      So = [So table(P)];
      P = C;
   else
      P = PC;
   end
end

So = [So table(P)];
disp("编码后的码字流");
disp(So);

fprintf("扩充后的字典\n");
for key = table.keys()
   fprintf("%s:%d, ", string(key{1}), table(key{1}));
end

fprintf("\b\b\n\n");
