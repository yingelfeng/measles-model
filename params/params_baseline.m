function p = params_baseline()
%PARAMS_BASELINE Summary of this function goes here
%  rates yearly
p.mu = 0.02;        %   death rate - immigration rate
p.tau = 4;          %   delay of entry into susceptible class
p.sigma = 45.66;    %   incubation rate
p.gamma = 73.05;    %   recovery rate
p.R0 = 31.19;       %   basic reproduction number
p.beta = p.R0*(p.gamma+p.mu); %   baseline transmission rate
p.N = 2445368;      %   initial population size
p.a = 0.38;         %   amplitude of seasonality
p.d = 4;            %   recruitment delay
p.rho = 0.46;       %   reporting probability
p.psi = 0.90;       %   reporting overdispersion
end

