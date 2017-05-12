function [ x ] = NewtonHornerMethod(A, x0, M, tol)
%NEWTON Summary of this function goes here
    x = x0;
    for ite = 0:M
        [f, fprime] = HornerAlg(A, x0);
        x = x0 - (f/fprime);
        if abs(x - x0) < tol
            return
        else
            x0 = x;
        end
    end
end

