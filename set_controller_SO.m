function [ Kp, Ti ] = set_controler_SO(TF)
%SET_CONTROLER_MO Summary of this function goes here
%   Detailed explanation goes here
    %% tf normalization
    K = TF.num;
    den = TF.den;
    
    syms T0 Tsigma;
    [T0,Tsigma] = solve(T0*Tsigma == den(1), T0 == den(2));
    Ti = 4*Tsigma;
    Kp = T0/(2*K*Tsigma);

end

