function out = outputs(t, X, p)
S = X(:,1); I = X(:,3); N = sum(X,2);

% Evaluate B(t) on the solver grid
B = arrayfun(@(tt) school_term_forcing(tt,p), t);

lambda   = B .* (I./N);      % force of infection
incidence = lambda .* S;     % new infections per day

R0_inst = B./(p.gamma + p.mu);

% vaccine function
if isfield(p,'v_fun') && ~isempty(p.v_fun)
    v = arrayfun(@(tt) p.v_fun(tt,p), t);
else
    v = zeros(size(t));
end

out.incidence = incidence;
out.R0_inst   = R0_inst;
out.N         = N;
out.v_fun     = v;
end