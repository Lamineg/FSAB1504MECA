function [ Jdqd ] = QuickRManuel_cons_jdqd( data )
% @pre  structure data
% @post renvoie le terme J point, q point

x1     = data.q(1);
theta1 = data.q(2);
x2     = data.q(3);
theta2 = data.q(4);
theta3 = data.q(5);

x1_point     = data.qd(1);
theta1_point = data.qd(2);
x2_point     = data.qd(3);
theta2_point = data.qd(4);
theta3_point = data.qd(5);

L2     = 530;
L4     = 100;
L5     = 100;

Jpoint = [0 -x2_point*sin(theta1)-x2*theta1_point*cos(theta1)...
                   -theta1_point*sin(theta1) L4*theta2_point*cos(theta2) 0;
          0 -x2_point*cos(theta1)-x2*theta1_point*sin(theta1)...
                    theta1_point*cos(theta1) L4*theta2_point*sin(theta2) 0;
          0 -L2*theta1_point^2*cos(theta1) 0 0 L5*theta3_point_cos(theta3);
          0 -L2*theta1_point^2*sin(theta1) 0 0 L5*theta3_point_cos(theta3)];
      
Jdqd=Jpoint*data.qd;

end

