function [ M, c ] = QuickRManuel_dirdyna( data )
% @pre structure data
% @post renvoie la matrice de masse M, et le vecteur dynamique c

m1=data.m1; 
m2=data.m2; 
m3=data.m3;
m4=data.m4;

x1     = data.q(1);
theta1 = data.q(2);
x2     = data.q(3);
theta2 = data.q(4);
theta3 = data.q(5);

I2 = data.I2;
I3 = data.I3;
I4 = data.I4;
I5 = data.I5;

L2     = 530;
L4     = 100;
L5     = 100;

M12 = -(L2/2)*m2*sin(theta1) - m3*x2*sin(theta1);
M21 = M12;
M22 = (L2^2)*m2/4 + I2 + m3*x2^2 + I3;

M = [m1+m2+m3       M12 m3*cos(theta1) 0            0;
     M21            M22 0              0            0;
     m3*cos(theta1) 0   m3             0            0;
     0              0   0              m4*(L4^2)+I4 0;
     0              0   0              0            m5*(L5^2)+I5];
 



end

