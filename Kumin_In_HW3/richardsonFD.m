function [Nm] = richardsonFD(f, x0, h, m)
%RICHARDSONFD Implementation of Richardson's extrapolation with
% forward-difference formula
%   Detailed explanation goes here
    if (m == 1)
        Nm = (f(x0 + h) - f(x0)) / h;
        return
    else
        Nm = richardsonFD(f, x0, h/2, m - 1) + ...
             (richardsonFD(f, x0, h/2, m - 1) - richardsonFD(f, x0, h, m-1)) ...
             / (2^(m - 1) - 1);
    end
end

