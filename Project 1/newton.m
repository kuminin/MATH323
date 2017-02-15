function [ x, fx, ite ] = newton( f, fprime, x0, M, tol )
%NEWTON Summary of this function goes here
    fx = f(x0);
    ite = 0;
    x = x0;
    if (abs(fx) < tol)
        return
    end
    for ite = 1:M
        x = x0 - (f(x0)/fprime(x0));
        fx = f(x);
        if abs(x - x0) < tol
            return
        else
            x0 = x;
        end
    end
end

