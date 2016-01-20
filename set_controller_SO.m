function [ Kr, Tr ] = set_controler_SO(TF)
%SET_CONTROLER_MO Summary of this function goes here
%   Detailed explanation goes here
    %% tf normalization
    K = TF.Kp;
    T = TF.Tp1;

    Tr = 4*T;
    Kr = 1/(2*K*T);

end

