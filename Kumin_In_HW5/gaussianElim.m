function [x] = gaussianElim(A)
%GAUSSIANELIM Summary of this function goes here
%   Detailed explanation goes here
    n = size(A,1);
    x = zeros(n,1);
    for c = 1:n-1
        p = c;
        while (p <= n)
            if A(p, c) ~= 0
                break;
            end
            p = p + 1;
        end
        if (p > n)
            x = 'No unique solution';
            return;
        elseif (p ~= c)
            temp = A(c,:);
            A(c,:) = A(p,:);
            A(p,:) = temp;
        end
        for r = c+1:n
            m = A(r,c) / A(c,c);
            A(r,:) = A(r,:) - m * A(c,:);
        end
    end
    if (A(n,n) == 0)
        x = 'No unique solution';
        return;
    else
        x(n) = A(n,n+1)/A(n,n);
        for i = n-1:-1:1
            sum = 0;
            for j = i+1:n
                sum = sum + A(i,j)*x(j);
            end
            x(i) = (A(i, n+1) - sum) / A(i,i);
        end
    end
end
