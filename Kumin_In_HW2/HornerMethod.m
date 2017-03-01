function [ b, r ] = HornerMethod( a, z )
%HORNER method for synthetic division given any polynomial.
%   b is the vector of coefficients in the quotient listed in decreasing order.
%   r is the remainder term
%   a is the vector of coefficients of a polynomial listed in decreasing order.
%   z is the point of evaluation.
    n = length(a);
    b = zeros(1, n - 1);
    b(1) = a(1);
    for k=2:n-1
        b(k) = a(k) + z * b(k - 1);
    end
    r = a(n) + z * b(n-1);
end

