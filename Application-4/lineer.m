% Lineer denklem sistemi örneği
A = [12 -2 3 1; -2 15 6 -3; 1 6 20 -4; 0 -3 2 9];
b = [-3; 5; 20; 4];

% Farklı başlangıç değerleri
x0_gauss_seidel = [1; 2; 3; 4];
x0_jacobi = [1; 1; 1; 1];
x0_sor = [0; 0; 0; 0];

% Gauss-Seidel yöntemi
gauss_seidel(A, b, x0_gauss_seidel, 1e-12, 50);

% Jacobi yöntemi
jacobi(A, b, x0_jacobi, 1e-12, 50);

% SOR yöntemi
omega = 1.25;
sor(A, b, x0_sor, omega, 1e-12, 50);