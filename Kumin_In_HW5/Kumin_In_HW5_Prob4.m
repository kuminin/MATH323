A = [2.121 -3.460 0 5.217; 
     0 5.193 -2.197 4.206; ...
     5.132 1.414 3.141 0; 
     -3.111 -1.732 2.718 5.212];
b = [1.909; 0; -2.101; 6.824];
[P, L, U] = myLU(A);
x = backward(U, forward(L, P*b))

%% Checking if my answer is correct.
fprintf('We can check if my answer is correct by multiplying P'', L, and U\n');
fprintf('together to see if it equals to A, since A*P = L*U.\n')
fprintf('For the values of A we have:\n');
A
fprintf('For the values of P''*L*U we have:\n');
P'*L*U

fprintf('Since we will have floating point errors for P'' * L * U\n');
fprintf('it will be off by some decimal numbers. However, as shown\n');
fprintf('it''s the same up to the 4th floating point number compared to A.\n');