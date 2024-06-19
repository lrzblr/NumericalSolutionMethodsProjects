clear all;
clc;
% Örnek (x,y) çiftleri ve derece
x_data = [1, 5, 7, 8, 3];
y_data = [10, 14, 6, 4, 17];
degree = 3; % İkinci derece bir polinom regresyon istiyoruz

% İstenen x değeri
x_value = 8;

% Fonksiyonu çağır
[coefficients, y_est] = fitPolynomialRegression(x_data, y_data, degree, x_value);

% Sonuçları göster
disp('Polinom regresyon katsayıları:');
disp(coefficients);
disp(['x = ', num2str(x_value), ' için tahmini y değeri:']);
disp(y_est);