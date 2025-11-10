function p = params_baseline()
% baseline parameters pulled from A comparison of existing measles models
% by Clifford Allotey


%  rates yearly
p.mu = 0.02/365;        %   death rate - immigration rate
p.mu_b_fun   = @(t,p) p.mu;     %   birth rate fcn
p.tau = 4*365;          %   delay of entry into susceptible class
p.sigma = 45.66/365;    %   incubation rate
p.gamma = 73.05/365;    %   recovery rate
p.R0 = 31.19;       %   basic reproduction number
p.beta = p.R0*(p.gamma+p.mu); %   baseline transmission rate
p.N = 2445368;      %   initial population size
p.a = 0.38;         %   amplitude of seasonality
p.d = 4;            %   recruitment delay
p.rho = 0.46;       %   reporting probability
p.psi = 0.90;       %   reporting overdispersion

% vaccine
target = 0.90;   k = 0.005;   t0 = 365*10;         % slope & midpoint
p.v_fun = @(t,p) target ./ (1 + exp(-k*(t - t0)));

end

