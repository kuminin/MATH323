function [x, fx, ite] = falseposition(f, a, b, M, tol)
%FALSEPOSITION Summary of this function goes here
%   Detailed explanation goes here
    if (a > b)
        temp = a;
        a = b;
        b = temp;
    end
    f0 = f(a);
    f1 = f(b);
    for ite = 2:M
        x = b - f1 * (b - a)/(f1 - f0);
        fx = f(x);
        if abs(x - b) < tol
            return
        end
        if fx * f1 < 0
            a = b;
            f0 = f1;
        end
        b = x;
        f1= fx;
    end
end
