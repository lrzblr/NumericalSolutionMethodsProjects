function result = newtonInterpolation(x, y, targetX)
    n = length(x);
    
    if n ~= length(y)
        error('x ve y dizileri aynı uzunlukta olmalıdır.');
    end
    
    % İleri farkları tablosu oluşturma
    forwardDiffTable = zeros(n);
    forwardDiffTable(:, 1) = y';
    for j = 2:n
        for i = 1:n-j+1
            forwardDiffTable(i, j) = (forwardDiffTable(i+1, j-1) - forwardDiffTable(i, j-1)) / (x(i+j-1) - x(i));
        end
    end
    
    % Katsayıları ve interpolasyonu hesaplama
    coefficients = forwardDiffTable(1, :);
    result = coefficients(1);
    temp = 1;
    for i = 2:n
        temp = temp * (targetX - x(i-1));
        result = result + coefficients(i) * temp;
    end
    
    disp(['Interpolated value at x = ' num2str(targetX) ' is ' num2str(result)]);
end