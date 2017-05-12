function [x] = gaussianElimScaledPivot(A)
%GAUSSIANELIMSCALEDPIVOT Summary of this function goes here
%   Detailed explanation goes here
    n = size(A, 1);
    s = zeros(n, 1);
    x = zeros(n, 1);
    for i = 1:n
        s(i) = max(abs(A(i,1:n)));
    end
    for c = 1:n-1
        scaled = abs(A(c:end,c)) ./ s(c:end);
        p = find(scaled == max(scaled), 1);
        if p >= c
            temp = A(c,:);
            A(c,:) = A(p,:);
            A(p,:) = temp;
        end
        for r = c+1:n
            m = A(r,c) / A(c,c);
            A(r,:) = A(r,:) - m * A(c,:);
        end
    end
    x(n) = A(n,n+1)/A(n,n);
    for i = n-1:-1:1
        sum = 0;
        for j = i+1:n
            sum = sum + A(i,j)*x(j);
        end
        x(i) = (A(i, n+1) - sum) / A(i,i);
    end
end

