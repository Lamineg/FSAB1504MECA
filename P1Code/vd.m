function [vd] = vd(ud,jac)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

Jv = jac(:,qv);
Ju = jac(:,qu);
b = -Ju*ud; %qd(qu)
vd = Jv\b; %peut etre faire comme dans NR au lieu de vd, mettre data.qd(qv) avec data comme sortie

end


%OU ALORS...? %Need to check


function [vd] = vd(data)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[~, jac] = QuickRManuel_cons_hJ(data);
Jv = jac(:,qv);
Ju = jac(:,qu);
ud=data.qd(qu);
b = -Ju*ud; 
vd = Jv\b; 

end
