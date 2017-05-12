function [l] = gaussianQuad2D(f,a,b,c,d,n,m)
%GAUSSIANQUAD2D Summary of this function goes here
%   Detailed explanation goes here
    l = 0;
    roots = [0.5773502692, -0.5773502692, 0, 0, 0;
             0.7745966692, 0, -0.7745966692, 0, 0;
             0.8611363116, 0.3399810436, -0.3399810436, -0.8611363116, 0;
             0.9061798459, 0.5384693101, 0, -0.5384693101, -0.9061798459];
    coeff = [1, 1, 0, 0, 0;
             0.5555555556, 0.8888888889, 0.5555555556, 0, 0;
             0.3478548451, 0.6521451549, 0.6521451549, 0.3478548451, 0;
             0.2369268850, 0.4786286705, 0.5688888889, 0.4786286705, ...
             0.2369268850];
    x = @(u) ((b - a) * u + (b + a)) / 2;
    y = @(u, v) ((d(u) - c(u)) * v + (d(u) + c(u))) / 2;
    g = @(u, v) f(u, v) * (d(u) - c(u)) / 2;
    for i = 1:n
        for j = 1:m
            u = x(roots(n-1, i));
            v = y(u, roots(m-1, j));
            l = l + g(u, v) * coeff(n-1, i) * coeff(m-1, j);
        end
    end
    l = l * (b - a) / 2;
end

