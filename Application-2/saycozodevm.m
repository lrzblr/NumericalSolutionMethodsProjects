clc;
clear;
close all;
x0 = 0.5; %başlangıç tahminleri
x1 = 1.5; %başlangıç tahminler
x2 = 4; %başlangıç tahminler
TOL = 10^-5; %tolerans değeri
N0 = 100; 
format long;
f = @ (x) x^5- x^2- 28; %kokunu bulunan fonksiyon
h0 = x1 - x0; %kökler arası fark tanımı
h1 = x2 - x1; %kökler arası fark tanımı
DELTA1 = (f(x1) - f(x0))/h0; %fark tanimlari
DELTA2 = (f(x2) - f(x1))/h1; %fark tanimlari
a = (DELTA2 - DELTA1)/(h1 + h0); %katsayilarin bulunması
i=3;
while i <= N0
      b = DELTA2 + h1*a; % katsayilarin bulunması
      D = (b^2 - 4*f(x2)*a)^(1/2); %delta
      if abs(b-D) < abs(b+D) %yeterli toleransa kadar islem tekrari
          E = b + D;
      else
          E = b - D;
      end
      h = -2*f(x2)/E;
      x3 = x2 + h; %aranan kok
      if abs(h) < TOL %bagil hata ile tolerans karsilastirimi
          x3
          disp(x3);
          break
      end
      x0 = x1; %koklerin degisimi
      x1 = x2; %koklerin degisimi
      x2 = x3; %koklerin degisimi
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