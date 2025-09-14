function dx = rhs_seir(t, x, p)
%   deterministic model
%   changing transmission rate due to school terms
%   delay of 4 yrs from birth to susceptible class; low contact rate for
%   infants
%   after vaccine/recovery, not susceptible again
%   set v(t) for vaccinations, set 0 for pre vaccine era
%   
    S = x(1); E = x(2); I = x(3); R = x(4);
    N = S + E + I + R;

    B = school_term_forcing(t,p);
    mu_b = p.mu_b_fun(t - p.tau, p);
    V = 0; %p.v(t-p.tau); currently pre vaccine era
    lambda = B*I/N;

    dS = mu_b*N*(1-V) - lambda*S - p.mu*S;
    dE = lambda*S - (p.sigma+p.mu)*E;
    dI = p.sigma*E - (p.gamma + p.mu)*I;
    dR = p.gamma*I - p.mu*R + mu_b*N*V;

    dx = [dS; dE; dI; dR];
end

