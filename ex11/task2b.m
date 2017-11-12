% Gauss-Seidel iteration script, based on the Gauss-Seidel iteration 
% example from mathworks.com

U = [0 0.2 0.4; 0 0 -0.5; 0 0 0];
L = [0 0 0; 0.25 0 0; 0.25 0.375 0];

b = [3.8 -0.5 4.875]';

I = eye(3);
A = I + L + U;

% initial vector x
x = ones(3,1);

n = size(x, 1);

GaussItr = 0;

% list of all values of x
Gausshistory=[x];

while GaussItr<4
    x_old=x;   
    for i=1:n        
        sigma=0;
        for j=1:i-1
                sigma=sigma+A(i,j)*x(j);
        end
        for j=i+1:n
                sigma=sigma+A(i,j)*x_old(j);
        end
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
 
    % append new x to history
    Gausshistory=[Gausshistory, x];
    
    GaussItr=GaussItr+1;
end
fprintf('Solution of the system is : \n%f\n%f\n%f\nin %d iterations\n',x,GaussItr);