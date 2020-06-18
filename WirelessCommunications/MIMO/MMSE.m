function Co = MMSE(Ci, H, No, P)
   [Nr, Nt] = size(H);
   Ct = P*(P*(H'*H) + No*eye(Nt))\H';
   Co = reshape(Ct*Ci, 1, []);      % 恢复串行
end
