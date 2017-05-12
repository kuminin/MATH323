function [x] = backward(U, b)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    n = size(U,1);
    x = zeros(n, 1);
    for i = 1:n
        if isnan(U(i,i)) || U(i,i) == 0
            fprintf('No Solution');
            return;
        end
    end
    x(n) = b(n) / U(n,n);
    for r = n-1:-1:1
        sum = 0;
        for c = r+1:n
            sum = sum + x(c)*U(r,c);
        end
        x(r) = (b(r) - sum) / U(r,r);
    end
end

