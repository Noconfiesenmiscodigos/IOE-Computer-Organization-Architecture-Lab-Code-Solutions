function [S, V] = fourbitsubtracter(i1,i2,code=1)
  function Xor = Xor(A,B)
    Xor = or(and(A,not(B)),and(not(A),B));
  end
  function [S, C] = HA(A,B)
    S = Xor(A,B);
    C = and(A,B);
  end
  function [S, Co] = FA(A,B,Ci)
    [S,C1] = HA(A,B);
    [S,C2] = HA(S,Ci);
    Co = or(C1,C2);
  end
  [S(:,4) Co] = FA(i1(:,4),Xor(i2(:,4),code),code);
  [S(:,3) Co] = FA(i1(:,3),Xor(i2(:,3),code),Co);
  [S(:,2) Co] = FA(i1(:,2),Xor(i2(:,2),code),Co);
  [S(:,1) V] = FA(i1(:,1),Xor(i2(:,1),code),Co);
  V = Xor(V,code);
  if V == 1 && code == 1
      for i = 1:4
                  [S(:,i)] = not(S(:,i));
      end
      [S(:,4) Co] = FA(S(:,4),1,0);
      [S(:,3) Co] = FA(S(:,3),0,Co);
      [S(:,2) Co] = FA(S(:,2),0,Co);
      [S(:,1) Co] = FA(S(:,1),0,Co);
  endif
end
