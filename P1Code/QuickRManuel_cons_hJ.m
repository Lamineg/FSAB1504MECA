function [ h, Jac] = QuickRManuel_cons_hJ(data)
% @pre  structure data
% @post renvoie: vecteur des contraintes h, et matrice jacobienne des contraintes



% Pour facilité les relectures
x1     = data.q(1);
theta1 = data.q(2);
x2     = data.q(3);
theta2 = data.q(4);
theta3 = data.q(5);

L2     = data.L(2);
L4     = data.L(4);
L5     = data.L(5);

%h = [ -L4*cos(data.q[4]-data.dOA[1]+data.q[1]+data.q[]) 
    

Jac = [ 1 -x2*sin(theta1)  cos(theta1)  L4*sin(theta2)   0              ;
        0  x2*cos(theta1)  sin(theta1) -L4*cos(theta2)   0              ;
        1 -L2*sin(theta1)  0            0                L5*sin(theta3) ;
        0  L2*cos(theta1)  0            0               -L5*cos(theta3)  ];

end

