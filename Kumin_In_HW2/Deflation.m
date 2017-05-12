function [ roots ] = Deflation( a, x0, M, ep )
%DEFLATION Summary of this function goes here
%   Detailed explanation goes here
    roots = zeros(1, 4);
    counter = 1;
    while length(a) ~= 1
        x0 =  NewtonHornerMethod(a, x0, M, ep);
        [a, ~] = Horner(a, x0);
        roots(counter) = x0;
        counter = counter + 1;
    end
end

