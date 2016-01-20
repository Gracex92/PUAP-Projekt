function [ Kr, Tr ] = set_controler_MO(TF)
%SET_CONTROLER_MO Summary of this function goes here
%   Detailed explanation goes here
    %% tf normalization
    K = TF.Kp;
    T1 = TF.Tp1;
    T2 = TF.Tp2;
    if (T1 > T2)
        Tr = T1;
        Kr = Tr/(2*K*T2);
    else
        Tr = T2;
        Kr = Tr/(2*K*T1);
    end

end

