clc;
clear;
xx = [-1, -0.5, 0, 0.5, 1, 1.5, 2]';
ff = [5.2426, 4.8684, 5.1962, 5.7375, 7, 9.7390, 14.7082]';
fd0 = -1.9393;
fdn = 12.6708;

%% Problem 5.a) naturalSpline coefficients a, b, c, and d table.
[an, bn, cn, dn] = naturalSpline(xx, ff);
fprintf('Table for Natural Spline:\n');
ConstructTable(an, bn, cn, dn);

%% Problem 5.b) clampedSpline coefficients a, b, c, and d table.
[ac,bc,cc,dc] = clampedSpline(xx, ff, fd0, fdn);
fprintf('\n\nTable for Clamped Spline:\n');
ConstructTable(ac, bc, cc, dc);

%% Problem 5.c) Plotting y = abs(x)^3 + 3*(x + 3)^.5, natural and clamped spline

x = -1.5:0.01:2.5;
y = abs(x).^3 + 3 .* (x + 3);

figure % opens new figure window
plot(x, y, '-b');

% This is for natural spline
splineGraph(an, bn, cn, dn, xx, '-g');

% This is for clapmed spline
splineGraph(ac, bc, cc, dc, xx, '-r');

%% Prolblem 5.d) Which spline gives a better approximate to the function?

fprintf('\n\nThe clamped spline gives a better approximation compared to the ');
fprintf('natural spline because the\nprior contians more information about th');
fprintf('e function. Additionally it is easier for the computer\nto calculate');
fprintf(' relative to the natural spline.\n');