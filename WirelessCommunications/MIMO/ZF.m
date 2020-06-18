function Co = ZF(Ci, H)
   Co = reshape(H\Ci, 1, []);    % 恢复串行
end
