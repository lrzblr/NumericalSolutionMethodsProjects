function x = gauss_seidel(A, b, x0, iter)
    n = length(b);
    x = x0;
    for k = 1:iter
        for i = 1:n
            x(i) = (b(i) - A(i,1:i-1)*x(1:i-1) - A(i,i+1:n)*x(i+1:n)) / A(i,i);
        end
    end
end

% Verilen denklem sistemini burada tanımlayın
A = [2, -1, 0; -1, 2, -1; 0, -1, 2];
b = [1; 2; 3];
x0 = [1; 1; 1];
iter = 5;

% Gauss-Seidel yöntemiyle çözümü bulma
x = gauss_seidel(A, b, x0, iter);
disp(x);