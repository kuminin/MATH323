A = [3.3330 15920 10.333 7953; 2.2220 16.710 9.6120 0.965; -1.5611 5.1792 -1.6855 2.714];

%% Part a) Solving linear system using GE and GESPP
fprintf('Answer for Gaussian Elimination is:\n')
x1 = gaussianElim(A)

fprintf('Answer for Gaussian Elimination with Scaled Pivoting is:\n')
x2 = gaussianElimScaledPivot(A)

%% Part b) Which is better?

fprintf('GESPP is better than GE since it remedies the scaling\n');
fprintf('issues that comes with GE and GEPP. Additionally from\n');
fprintf('observing the answers, the answers for GESPP is more\n');
fprintf('accurate than GE.\n')