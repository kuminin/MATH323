function [x] = forward(L, b)
%FORWARD Summary of this function goes here
%   Detailed explanation goes here
    n = size(L,1);
    x = zeros(n, 1);
    for i = 1:n
        if isnan(L(i,i)) || L(i,i) == 0
            fprintf('No Solution');
            return;
        end
    end
    x(1) = b(1) / L(1,1);
    for r = 2:n
        sum = 0;
        for c = 1:r-1
            sum = sum + x(c)*L(r,c);
        end
        x(r) = (b(r) - sum) / L(r,r);
    end

end

