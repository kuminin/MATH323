function [P, L, U] = myLU(A)
%MYLU Summary of this function goes here
%   Detailed explanation goes here
    n = size(A,1);
    P = eye(size(A,1));
    L = eye(size(A,1));
    for c = 1:n-1
        column = A(c:end, c);
        p = find(column == max(abs(column)),1) + c - 1;
        if p > c
            temp = A(c,:);
            A(c,:) = A(p,:);
            A(p,:) = temp;
            temp = P(c, :);
            P(c,:) = P(p,:);
            P(p,:) = temp;
        end
        for r = c + 1:n
            A(r,c) = A(r,c)/A(c,c);
            for k = c + 1:n
                A(r, k) = A(r, k) - A(r, c) * A(c, k);
            end
        end
    end
    U = triu(A);
    L = L + A - U;
end

