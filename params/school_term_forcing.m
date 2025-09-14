function b = school_term_forcing(t,p)
% school term forcing based on the following equations:
% B(t) =
% β (1 + 2(1 − p)a), during the school term,
% β (1 − 2pa), during vacation
% 
% vacations are april 10-15, july 18 - sept 9, oct 27 - nov 4, and dec 31 -
% jan 7. based on school terms in the UK.

    day = mod(t, 365);
    
    if (day>=7 && day<=100) || (day>=115 && day<=199) || (day>=252 && day<=300) || (day>=308 && day<=365)
        b = p.beta * (1 + 2*(1 - p.rho)*p.a);
    else 
        b = p.beta * (1 - 2*p.rho*p.a);
    end
end

