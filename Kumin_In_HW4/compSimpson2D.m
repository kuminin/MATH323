function [l] = compSimpson2D(f,a,b,c,d,n,m)
%COMPSIMPSON2D Summary of this function goes here
%   Detailed explanation goes here
    % calculate the step size in the x-direction
    h = (b - a) / n;
    y = [];
    
    % calculate the composite simpsons for the y direction at every x interval.
    for x = a:h:b
        y = [y, compositeSimpson(@(y) f(x,y), c(x), d(x), m)];
    end
    % calculate the composite simpson for the x direction by multiplying the
    % odd by 4 and even by 2 and sum the whole list.
    l = (sum(y(3:2:end-2)) * 2 + sum(y(2:2:end-1)) * 4 + y(end) + y(1)) ... 
        * (h / 3);
    
end

