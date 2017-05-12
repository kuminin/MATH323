clc;
clear;
a = [1 -4 7 -5 -2];
z0 = 3;
[fp, fprimeP] = HornerAlg(a, z0);
fprintf('f(p) = %d\n', fp)
fprintf('f''(p) = %d\n', fprimeP);