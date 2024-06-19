function fixed_point_iteration()
    % Başlangıç değerleri
    x = 1.5;
    y = 0.5;
    
    % İterasyon sayacı
    iter = 0;
    
    % Hata toleransı
    tol = 1e-5;
    
    % İterasyonlar
    while true
        x_prev = x;
        y_prev = y;
        
        % Sabit nokta iterasyonu formülleri
        x = sqrt((5 - y^2) / 2);
        y = (3 - x_prev) / 2;
        
        % Hata kontrolü
        if abs(x - x_prev) < tol && abs(y - y_prev) < tol
            break;
        end
        
        iter = iter + 1;
    end
    
    % Sonuçları ekrana yazdırma
    fprintf('x = %.4f, y = %.4f\n', x, y);
    fprintf('Iterasyon sayısı: %d\n', iter);
end
