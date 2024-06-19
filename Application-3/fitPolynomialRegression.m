function [coefficients, y_est] = fitPolynomialRegression(x_data, y_data, degree, x_value)
    % x_data ve y_data, regresyon için kullanılan (x,y) çiftleridir.
    % degree, polinomun derecesidir.
    % x_value, tahmini y değerinin hesaplanmak istendiği x noktasıdır.
    
    % Polinom regresyon katsayılarını hesapla
    coefficients = polyfit(x_data, y_data, degree);
    
    % İstenen x değeri için regresyon fonksiyonunun tahmini y değerini hesapla
    y_est = polyval(coefficients, x_value);
end