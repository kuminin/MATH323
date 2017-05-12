function [ Qnn ] = NevilleMethod( xval, fval, x )
%NEVILLEMETHOD Summary of this function goes here
%   Detailed explanation goes here
    n = length(fval);
    F = zeros(n);
    for i = 1:n
        F(i, 1) = fval(i);
    end
    for c = 2:n
        for r = c:n
            F(r, c) = ((x - xval(r-c+1))*F(r, c-1) - (x - xval(r))*F(r-1, c-1))/(xval(r) - xval(r-c+1));
        end
    end
    Qnn = F(n, n);
end

