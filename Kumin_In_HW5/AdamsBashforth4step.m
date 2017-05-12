function [t,w] = AdamsBashforth4step(f,a,b,alpha,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [t,w] = RungeKutta4(f,a,b,alpha,N);
    h = (b - a) / N;
    for i = 4:N
        w(i + 1) = w(i) + (h / 24) * (55*f(t(i), w(i)) - 59*f(t(i-1), w(i-1)) ...
            + 37*f(t(i-2), w(i-2)) - 9*f(t(i-3), w(i-3)));
    end
end

