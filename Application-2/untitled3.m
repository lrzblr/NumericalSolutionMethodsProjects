clc;
clear;
close all;
x0 = 1; %ilk tahminler
x1 = 1.5; %ilk tahminler
x2 = 2.5; %ilk tahminler
TOL = 10^-5; %tolerans
N0 = 100; %iterasyon siniri
format long;
f = @ (x) x^3+x^2- 4x-4; %kokunu bulmak istedigimiz fonksiyon
h0 = x1 - x0; %fark tanimlari
h1 = x2 - x1; %fark tanimlari
DELTA1 = (f(x1) - f(x0))/h0; %fark tanimlari
DELTA2 = (f(x2) - f(x1))/h1; %fark tanimlari
a = (DELTA2 - DELTA1)/(h1 + h0); %katsayilari bulmak icin yapiyoruz
i=3;
while i <= N0
      b = DELTA2 + h1*a; % katsayilari buluyoruz.
      D = (b^2 - 4*f(x2)*a)^(1/2); %deltayi buluyoruz
      if abs(b-D) < abs(b+D) %uygun toleransa kadar islem dongusu
          E = b + D;
      else
          E = b - D;
      end
      h = -2*f(x2)/E;
      x3 = x2 + h; %polinomun aranan koku
      if abs(h) < TOL %eger bagil hata toleranstan buyukse devam ediyoruz.
          x3
          disp(x3);
          break
      end
      x0 = x1; %kokleri birbirinin yerine atiyoruz.
      x1 = x2; %kokleri birbirinin yerine atiyoruz.
      x2 = x3; %kokleri birbirinin yerine atiyoruz.
      h0 = x1 - x0;
      h1 = x2 - x1;
      DELTA1 = (f(x1) - f(x0))/h0;
      DELTA2 = (f(x2) - f(x1))/h1;
      a = (DELTA2 - DELTA1)/(h1 + h0);
      i = i + 1;
  end
if i > N0
      formatSpec = string('yontem iterasyonlardan sonra basarisiz oldu ,N0= %d \n');
      fprintf(formatSpec,N0);
  end