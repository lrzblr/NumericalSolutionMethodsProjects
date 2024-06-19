% İlk denklem sistemi için
f1 = @(x, y) x^2 + x*y - 10;
f2 = @(x, y) y + 3*x*y^2 - 57;

% İterasyon limiti
iter_max = 100000; 

% Jakobiyen matrisi
J = @(x, y) [2*x + y, x; 3*y^2, 1 + 6*x*y];

% Başlangıç değerleri
x0 = [1.5; 3.5];

% Epsilon değeri
epsilon = 0.01;

% Newton-Raphson yöntemi
[x_newton, iter_newton] = newton_raphson(f1, f2, J, x0, epsilon);

% Basit İterasyon yöntemi
[x_simple, iter_simple] = simple_iteration(f1, f2, x0, epsilon, iter_max);

disp('Newton-Raphson Yöntemi Çözümü:');
disp(['Sonuç: x = ', num2str(x_newton(1)), ', y = ', num2str(x_newton(2))]);
disp(['Iterasyon Sayısı: ', num2str(iter_newton)]);

disp('Basit İterasyon Yöntemi Çözümü:');
disp(['Sonuç: x = ', num2str(x_simple(1)), ', y = ', num2str(x_simple(2))]);
disp(['Iterasyon Sayısı: ', num2str(iter_simple)]);

% Newton-Raphson Yöntemi Fonksiyonu
function [x, iter] = newton_raphson(f1, f2, J, x0, epsilon)
    iter_max = 1000;
    x = x0;
    for iter = 1:iter_max
        F = [f1(x(1), x(2)); f2(x(1), x(2))];
        delta_x = -J(x(1), x(2)) \ F;
        x = x + delta_x;
        if norm(delta_x) < epsilon
            return;
        end
    end
    error('Iterasyon limitine ulaşıldı.');
end


% Basit İterasyon Yöntemi Fonksiyonu
function [x, iter] = simple_iteration(f1, f2, x0, epsilon, iter_max)
    x = x0;
    for iter = 1:iter_max
        x_new = [sqrt(10 - x(2)); sqrt((4-x(1)^2)/4)];
        if norm(x_new - x) < epsilon
            return;
        end
        x = x_new;
    end
    error('Iterasyon limitine ulaşıldı. Yakınsama sağlanamadı.');
end