function out = outputs(t, X, p)
S = X(:,1); I = X(:,3); N = sum(X,2);

% Evaluate B(t) on the solver grid
B = arrayfun(@(tt) school_term_forcing(tt,p), t);

lambda   = B .* (I./N);      % force of infection
incidence = lambda .* S;     % new infections per day

% If you computed p.beta from R0, instantaneous R0(t) is B(t)/(gamma+mu)
R0_inst = B./(p.gamma + p.mu);

out.incidence = incidence;
out.R0_inst   = R0_inst;
out.N         = N;
end