clc;
clear;
close all;
p0 = -.5;                        % verilen ilk terimler
p1 = .5;
p2 = 0;
TOL = 10^-5;                     % tolerans değeri
N0 = 100;
format long;
f = @ (x) 2*x^4-3*x^2+3*x-4;     % kökü bulunacak fonksiyon
h1 = p1 - p0;                    % fark tanımları
h2 = p2 - p1;                    % fark tanımları
DELTA1 = (f(p1) - f(p0))/h1;     % fark tanımları
DELTA2 = (f(p2) - f(p1))/h2;     % fark tanımları
d = (DELTA2 - DELTA1)/(h2 + h1); % katsayıları buluyoruz
i=3;
while i <= N0 
      b = DELTA2 + h2*d;            % katsayıları buluyoruz
      D = (b^2 - 4*f(p2)*d)^(1/2);  % kökü bulma işlemi
      if abs(b-D) < abs(b+D)        %uygun toleransa kadar bu işlemler devam ediyor
          E = b + D;
      else
          E = b - D;
      end
      h = -2*f(p2)/E;
      p = p2 + h;
      if abs(h) < TOL
          p
          disp(p);
          break
      end
      p0 = p1;
      p1 = p2;
      p2 = p;
      h1 = p1 - p0;
      h2 = p2 - p1;
      DELTA1 = (f(p1) - f(p0))/h1;
      DELTA2 = (f(p2) - f(p1))/h2;
      d = (DELTA2 - DELTA1)/(h2 + h1);
      i = i + 1;
  end
if i > N0
      formatSpec = string('The method failed after N0 iterations,N0= %d \n');
      fprintf(formatSpec,N0);
  end