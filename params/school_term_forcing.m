function b = school_term_forcing(t,p)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    day = mod(t, 365);
    
    if (day>=7 && day<=100) || (day>=115 && day<=199) || (day>=252 && day<=300) || (day>=308 && day<=365)
        b = p.beta * (1 + 2*(1 - p.rho)*p.a);
    else 
        b = p.beta * (1 - 2*p.rho*p.a);
    end
end

