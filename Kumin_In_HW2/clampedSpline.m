% This function constructs the coefficients of the clamped spline for a 
% function f with data points (x0,f(x0)), (x1,f(x1)), ..., (xn,f(xn)) given
% together with the derivatives at the end points f'(x0) and f'(xn)
%
% [a,b,c,d]=clampedSpline(xx,ff,fd0,fdn)
%
% input: xx = [x0,x1,...,xn]', ff = [f(x0),f(x1),...,f(xn)]', fd0 = f'(x0),
%        fdn = f'(xn)
% output: a = [a(0),a(1),...,a(n-1)]', b = [b(0),b(1),...,b(n-1)]'
%         c = [c(0),c(1),...,c(n-1)]', d = [d(0),d(1),...,d(n-1)]'
% Dr. Chung-min Lee March 7, 2009

function [a,b,c,d]=clampedSpline(xx,ff,fd0,fdn)

% a = [f(x0),...f(xn-1)]
a = ff(1:end);

% hj = xj+1 - xj
h = xx(2:end)-xx(1:end-1);

% form the matrix
A = diag([2*h(1); 2*(h(1:end-1)+h(2:end)); 2*h(end)]) + diag(h(1:end),-1) + diag(h(1:end),1);

% form the RHS
B = [3*(a(2)-a(1))/h(1)-3*fd0; 3*(a(3:end)-a(2:end-1))./h(2:end) - 3*(a(2:end-1)-a(1:end-2))./h(1:end-1);...
    3*fdn-3*(a(end)-a(end-1))/h(end)];

% solve for c
c = A\B;

% get b
b = (a(2:end)-a(1:end-1))./h - h.*(c(2:end)+2*c(1:end-1))./3;

% get d
d = (c(2:end)-c(1:end-1))./(3*h);

% a(n) and c(n) is not needed for the cubic spline representation
a = a(1:end-1);
c = c(1:end-1);