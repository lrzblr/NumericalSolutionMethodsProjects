function coefficients = vandermondeTechnique(x, y)
    n = length(x);
    
    if n ~= length(y)
        error('x ve y dizileri aynı uzunlukta olmalıdır.');
    end
    
    % Vandermonde matrisi oluşturma
    A = zeros(n, n);
    for i = 1:n
        A(:, i) = x.^(i-1);
    end
    
    % Katsayıları bulma
    coefficients = A \ y'; % Katsayıları bulmak için matris bölme işlemi
    
    % Sonuçları ekrana yazdırma
    disp('Polynomial coefficients:');
    disp(coefficients');
end