function [l] = compositeSimpson(f, a, b, n)
%COMPOSITESIMPSON Summary of this function goes here
%   Detailed explanation goes here
    if mod(n, 2) ~= 0
        fprintf('Hey bro you need an even number for n');
        return
    end
    h = (b - a) / n;
    x = @(j, a, h) a + j * h;
        
    l = (h / 3) * (sum(arrayfun(f, x((2:2:n-2), a, h))) * 2 + ... 
         sum(arrayfun(f, x((1:2:n-1), a, h))) * 4 + f(x(n, a, h)) + ...
         f(x(0, a, h)));

end

