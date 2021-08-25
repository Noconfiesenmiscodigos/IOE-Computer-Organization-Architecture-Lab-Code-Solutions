function [S, Co] = fourbitadder(i1,i2)
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
[S(:,4) Co] = FA(i1(:,4),i2(:,4),0);
[S(:,3) Co] = FA(i1(:,3),i2(:,3),Co);
[S(:,2) Co] = FA(i1(:,2),i2(:,2),Co);
[S(:,1) Co] = FA(i1(:,1),i2(:,1),Co);
end
