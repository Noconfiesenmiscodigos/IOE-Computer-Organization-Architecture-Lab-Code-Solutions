function [P] = multiplier(i1,i2)
    function [S, Co] = eightbitadder(i1,i2)
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
[S(:,8) Co] = FA(i1(:,8),i2(:,8),0);
[S(:,7) Co] = FA(i1(:,7),i2(:,7),Co);
[S(:,6) Co] = FA(i1(:,6),i2(:,6),Co);
[S(:,5) Co] = FA(i1(:,5),i2(:,5),Co);
[S(:,4) Co] = FA(i1(:,4),i2(:,4),Co);
[S(:,3) Co] = FA(i1(:,3),i2(:,3),Co);
[S(:,2) Co] = FA(i1(:,2),i2(:,2),Co);
[S(:,1) Co] = FA(i1(:,1),i2(:,1),Co);
end
P = [0 0 0 0 0 0 0 0];
    M = i1;
for x = 8:-1:5
      if (i2(1,x)==1)
          P = eightbitadder(P,circshift(M',x-8)');
      endif
    end
end
