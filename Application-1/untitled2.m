true_value = 1.41815; % Gerçek integral değeri
error = Inf; % Başlangıçta hata sonsuz kabul edilir

n = 1; % Başlangıçta 1 noktalı Gauss quadrature kullanılacak

while error > 0.000001
    n = n + 1; % Gauss quadrature noktasını arttır
    [x,w] = gauss_legendre(n, a, b); % n-noktalı Gauss quadrature noktalarını ve ağırlıklarını hesapla
    
    approx_value = sum(w .* (sin(x) ./ x).^2); % Gauss quadrature ile integralin yaklaşık değerini hesapla
    
    error = abs(true_value - approx_value); % Hata hesapla
end

disp("Hata 0.000001'den küçük olması için gereken Gauss quadrature nokta sayısı: " + n);
