function [ Kp, Ti ] = set_controler_MO(TF)
%SET_CONTROLER_MO Summary of this function goes here
%   Detailed explanation goes here
    %% tf normalization
    num = TF.num;
    den = TF.den;
    num(end) = num(end) / den(end);
    for i = 1:size(den)
        den(i) = den(i) / den(end);
    end
    syms T1 T2;
    [T1,T2] = solve(T1*T2 == den(1), T1+T2 == den(2));
    T1 = double(T1);
    T2 = double(T2);
    T1 = T1(1);
    T2 = T2(1);
    if (T1 > T2)
        Ti = T1;
        Tsig = T2;
    else
        Ti = T2;
        Tsig = T1;
    end
    Kp = Ti/(2*num(end)*Tsig);
end

