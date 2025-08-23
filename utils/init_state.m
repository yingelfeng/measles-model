function X0 = init_state(p)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
S0 = 0.03*p.N;
E0 = max(1, round(5.17e-5*p.N));
I0 = max(1, round(5.14e-5*p.N));
R0 = 0.97*p.N;
X0 = [S0; E0; I0; R0];
end

