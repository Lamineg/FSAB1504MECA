function [ h, Jac] = QuickRManuel_cons_hJ(data)
% @pre  structure data
% @post renvoie: vecteur des contraintes h, et matrice jacobienne des contraintes



% Pour faciliter les relectures
x1     = data.q(1);
theta1 = data.q(2);
x2     = data.q(3);
theta2 = data.q(4);
theta3 = data.q(5);

L2     = 0.530;
L4     = 0.100;
L5     = 0.100;

a1 = data.dO(1);
a2 = data.dO(2);
b2 = data.dO(3);

% Vecteur h
 h1 = (-L4*cos(theta2))-a1+x1+(x2*cos(theta1));
 h2 = (-L4*sin(theta2))-a2   +(x2*sin(theta1));
 h3 = (-L5*cos(theta3))   +x1+(L2*cos(theta1)); 
 h4 = (-L5*sin(theta3))-b2   +(L2*sin(theta1)); 
h = [  h1; h2; h3; h4 ]; 
       
       
       
    
% Matrice Jacobien
Jac = [ 1 -x2*sin(theta1)  cos(theta1)  L4*sin(theta2)   0              ;
        0  x2*cos(theta1)  sin(theta1) -L4*cos(theta2)   0              ;
        1 -L2*sin(theta1)  0            0                L5*sin(theta3) ;
        0  L2*cos(theta1)  0            0               -L5*cos(theta3)  ];

end

