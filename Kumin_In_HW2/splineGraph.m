function [ ] = splineGraph( a, b, c, d, xx, color )
%SPLINEGRAPH Summary of this function goes here
%   Detailed explanation goes here
    for i = 1:length(xx) - 1
        x = xx(i):0.01:xx(i+1);
        y = a(i) + b(i) .* (x - xx(i)) + c(i) .* (x - xx(i)).^2 + d(i) .* (x-xx(i)).^3;
        hold on;
        plot(x, y, color);
    end
end

