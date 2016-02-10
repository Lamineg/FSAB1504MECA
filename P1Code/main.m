% For now it's only nothing

% Initialisation de la structure data
data.m   = [ 16.0, 4.5, 1.5, 1.0, 2.0 ]; % [Kg]
data.dO = [ 0.100,  0.250, 0.450 ]              ; % [m]
data.q   = [   0.313;   1.99;    0.274;   0;   0.33 ]; % q=(x1,theta1,x2,theta2,theta3)
%data.q   = [0.3;2;0.1;0;0.5]
data.qd  = [   0;   0;    0;   0;   0 ];
data.dqq = [   0;   0;    0;   0;   0 ];
data.qu  = [4]                         ;
data.qv  = [1 2 3 5]                   ;

% Conditions initales
%[h,Jac] = QuickRManuel_cons_hJ(data)

data = newtonRaphson(data);
data.q