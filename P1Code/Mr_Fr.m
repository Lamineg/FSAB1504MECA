function [ Mr, Fr ] = Mr_Fr(data)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[M,c] = QuickRManuel_dirdyna(data);
[~, Jac] = QuickRManuel_cons_hJ(data);
[Jdqd] = QuickRManuel_cons_jdqd(data);

Jv = Jac(:,qv);
Ju = Jac(:,qu);
Muu = M(qu,qu);
Muv = M(qu,qv);
Mvu = M(qv,qu);
Mvv = M(qv,qv);
Bvu = - Jv\Ju;
b = - Jv\Jdqd;
Q = ForceCouple(data);

Mr = Muu + Muv*Bvu + transpose(Bvu)*Mvu + transpose(Bvu)*Mvv*Bvu;

Fr = (Muv + transpose(Bvu)*Mvv)*b + (c(qu)+ transpose(Bvu)*c(qv)) - (Q(qu) + transpose(Bvu)*Q(qv));

end

