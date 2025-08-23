addpath('params');
addpath('models');
addpath('utils');
clear; clc;

% 1) params + initial state
p = params_baseline();          % includes: N, mu, sigma, gamma, beta, a, school_frac, etc.
% p.mu_b   = p.mu;                % births = deaths (constant pop)
% p.v_fun  = @(t,p) 0;            % no vaccination yet
% p.B_fun  = @(t,p) school_term_forcing(t,p);

X0 = init_state(p);

% 2) time span
tspan = [0, 365*5];             % 5 years

% 3) solve (ode45 OK; if stiff, try ode15s)
opts = odeset('RelTol',1e-7,'AbsTol',1e-9);
[t, X] = ode45(@(t,x) rhs_seir(t,x,p), tspan, X0, opts);

% 4) derived outputs + plots
out = outputs(t, X, p);
plot_timeseries(t, X, out);
