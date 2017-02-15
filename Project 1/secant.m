function [x, fx, ite] = secant(f, x0, x1, M, tol)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    y0 = f(x0);
    fx = f(x1);
    for ite = 0:M
        x = x1 - fx*(x1-x0)/(fx-y0);
        if abs(x-x1) < tol
            fx = f(x);
            return
        end
        x0 = x1;
        y0 = fx;
        x1 = x;
        fx = f(x);
    end
end

