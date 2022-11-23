% Desciption: This function is to solve the first order equation 
% y'(x) = f(y(x)) with the given intial condition y(x0) = y0 

% Input:
% x: an independent variable (is written as a row vector 1*Nx)
% f: function f(y(x))
% y0: initial condition where y0 = y(x0)

% Output:
% y: solution/ dependent variable (same size as vector x)


function y = FirstOrderEquation(x, f, y0 )
    dx = x(2)-x(1); % distance
    Nx = length(x); % partitions
    y = zeros(size(x));
    y(1) = y0; %initial condition y(x0) = y0 where x0 is index 1 in vector x
    for i = 2:Nx
%             y(i) = y(i-1) + dx*f(y(i-1)); in the case y(x) = f(y(x))
            y(i) = y(i-1) + dx*f(x(i-1),y(i-1));  % in the case y(x) = f(y(x,y))
    end
    
end

