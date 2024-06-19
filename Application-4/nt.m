function x = gauss_seidel(A, b, x0, max_iter)
    % Gauss-Seidel metodunu uygula
    n = length(x0);
    x = x0;
    
    for iter = 1:max_iter
        for i = 1:n
            x(i) = (b(i) - A(i,1:i-1) * x(1:i-1) - A(i,i+1:n) * x(i+1:n)) / A(i,i);
        end
        fprintf('Iterasyon %d: x = [%.4f; %.4f; %.4f]\n', iter, x);
    end
end

% Verilen denklem sistemi
A = [3 -0.1 -0.2; 0.1 7 -0.3; 0.3 -0.2 10];
b = [7.85; -19.3; 71.4];
x0 = [1; 1; 1]; % Başlangıç değerleri
max_iter = 5; % Iterasyon sayısı

% Gauss-Seidel fonksiyonunu çağırarak çözümü bul
x = gauss_seidel(A, b, x0, max_iter);
