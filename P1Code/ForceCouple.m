function [Q] = ForceCouple(data)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

Q = zeros(5,1);
x1_point = data.qd(1);
F = -120;
alpha = 10;
beta = 0.1472;
gamma = 0.9;
Q(1) = F * (tanh(alpha*(x1_point - beta)) + gamma);
Q(4) = 17;

end

