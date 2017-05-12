function [l] = trapezoidal(f, a, b)
%TRAPEZOIDAL Summary of this function goes here
%   Detailed explanation goes here
    l = ((b - a) / 2 )* (f(a) + f(b));
end

