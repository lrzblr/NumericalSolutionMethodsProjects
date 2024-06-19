function x = gauss_elimination(A, b)
    % Denklem sistemini çözen Gauss eliminasyonu
    n = length(b);
    for k = 1:n-1
        for i = k+1:n
            factor = A(i,k) / A(k,k);
            for j = k:n
                A(i,j) = A(i,j) - factor * A(k,j);
            end
            b(i) = b(i) - factor * b(k);
        end
    end
    
    x = zeros(n, 1);
    x(n) = b(n) / A(n,n);
    for i = n-1:-1:1
        sum_ax = 0;
        for j = i+1:n
            sum_ax = sum_ax + A(i,j) * x(j);
        end
        x(i) = (b(i) - sum_ax) / A(i,i);
    end
end

