function dx = rhs_seir(t, x, p)
%RHS_SEIR Summary of this function goes here
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
    V = 0; %p.v(t-p.tau); currently pre vaccine era
    lambda = B*I/N;

    dS = p.mu*(t - p.tau)*(1-V) - B*S*I/N - p.mu*S;
    dE = B*S*I/N - (lambda+p.mu)*E;
    dI = lambda*E - (p.gamma + p.mu)*I;
    dR = p.gamma*I - p.mu*R + p.mu*(t-p.tau)*V;

    dx = [dS; dE; dI; dR];
end

