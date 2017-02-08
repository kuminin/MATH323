function [p, fp, ite] = bisection(f, a, b, M, Tol)
%BISECTION approximates a root for a given function.
%   
i = 1;
fa = f(a);

while i <= M
    p = a + (b - a) / 2;
    fp = f(p);
    if fp == 0 || abs(b - a) <= Tol
        ite = i;
        return
    end
    if fa * fp < 0
        b = p;
    else
        a = p;
        fa = f(a);
    end
    i = i + 1;
end
fprintf('Method failed after %d iterations', i);
end
