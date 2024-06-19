% Verilen denklem sistemini tanımlayalım
A = [3, 7, 13; 1, 5, 3; 12, 3, -5];
b = [76; 28; 1];

% Başlangıç değerleri
x = [1; 1; 1];

% 5 iterasyon ilerletme
for iter = 1:5
    x = gauss_elimination(A, b);
    disp(['Iterasyon ', num2str(iter), ':']);
    disp(x);
end