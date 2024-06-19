function x = jacobi_method(A, b, x0, iter)
    n = length(b);
    x = x0;
    for k = 1:iter
        x_new = x;
        for i = 1:n
            sigma = 0;
            for j = 1:n
                if j ~= i
                    sigma = sigma + A(i,j) * x(j);
                end
            end
            x_new(i) = (b(i) - sigma) / A(i,i);
        end
        x = x_new;
    end
end

% Verilen denklem sistemi
A = [3, 7, 13; 1, 5, 3; 12, 3, -5];
b = [76; 28; 1];
x0 = [1; 1; 1];
iter = 10;

% Jacobi yöntemiyle çözüm
x = jacobi_method(A, b, x0, iter);
disp(x);
