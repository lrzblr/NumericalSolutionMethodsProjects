function [I] = GausQuadn(f,a,b,n)
% xi wi 's are the points and weights for calculation
%  improper integrals with special points

n;
  I=0;
  if n==2
          disp(' I was here')
          w(1)=1;x(1)=0.5773502691896257 ;
          w(2)=1;x(2)=-0.5773502691896257;
          for i=1:n 
             I=I+(b-a)*0.5*w(i)*f((b-a)*0.5*x(i)+(b+a)*0.5);
          end
  elseif n==3
          w(1)=0.5555555555555556;x(1)=0.77459666924148347 ;
          w(2)=0.8888888888888888;x(2)=0;
          w(3)=0.5555555555555556;x(3)=-0.7745966692414834;
          for i=1:n 
              I=I+(b-a)*0.5*w(i)*f((b-a)*0.5*x(i)+(b+a)*0.5);
          end          
  elseif n==4
           w(1)=0.3478548451374544;x(1)=0.8611363115940525  ;
           w(2)=0.6521451548625460;x(2)=0.3399810435848563 ;
           w(3)=0.6521451548625460;x(3)=-0.3399810435848563;
           w(4)=0.3478548451374544;x(4)=-0.8611363115940525  ;
          for i=1:n 
             I=I+(b-a)*0.5*w(i)*f((b-a)*0.5*x(i)+(b+a)*0.5);
          end
  else
        disp('This version work only up to 4 points Gaussian quadrature')
end

end