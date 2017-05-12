function [l] = compositeMidpoint(f, a, b, n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    h = (b - a) / (n + 2);
    x = @(a, j, h) a + (j + 1) * h;
    l = sum(arrayfun(f, x(a, (0:2:n), h))) * 2 * h;
end

