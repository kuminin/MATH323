function [t,w] = RungeKutta4(f,a,b,alpha,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    h = (b - a) / N;
    t = a:h:b;
    w = zeros(1, N);
    w(1) = alpha;
    for i = 1:N
        k1 = h * f(t(i), w(i));
        k2 = h * f(t(i) + h/2, w(i) + k1/2);
        k3 = h * f(t(i) + h/2, w(i) + k2/2);
        k4 = h * f(t(i) + h, w(i) + k3);
        w(i + 1) = w(i) + (k1 + 2*k2 + 2*k3 + k4) / 6;
    end
end

