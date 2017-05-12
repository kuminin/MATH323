function [ FF ] = newtonDivDiff(xval, fval)
%NEWTONDIVDIFF generate the polynomials.
%   [ FF ] = NEWTONDIVDIFF(xval, fval) computes all of the constants c from 0 to
%   k using xval and fval as the x and y points of a data.
    if (length(xval) ~= length(fval))
        fprintf('Given argument does''t have the same length');
        return;
    end
    
    % initialize needed variables
    n = length(xval);
    FF = zeros(1,n);
    F = zeros(n, n);
    for i = 1:n
        F(i, 1) = fval(i);
    end
    
    % compute for all the constants c from 0 to k.
    for c = 2:n
        for r = c:n
            F(r, c) = (F(r, c - 1) - F(r - 1, c - 1))/(xval(r) - xval(r - c + 1));
        end
    end
    for i = 1:n
        FF(i) = F(i, i);
    end
end

