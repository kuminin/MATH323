function [ f, fprimeP ] = HornerAlgorithm( a, z )
%HORNERALGORITHM method for calulating the point at f and fprime.
%   f is the point calculated at
%   a is the vector of coefficients of a polynomial listed in decreasing order.
%   z is the point of evaluation.
    n = length(a);
    alpha = a(1);
    b = 0;
    for k = 2:1:n
        b = alpha + z * b;
        alpha = a(k) + z * alpha;
    end
    f = alpha;
    fprimeP = b;
end

