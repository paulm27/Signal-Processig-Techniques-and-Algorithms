% Unit impulse signals from unit step signals method 1

%{
Here we create a delta function using two step functions. We can subtract a
delayed version of the step function in order to do this
%}

n = -20:20;

u_n1 = (n>=0); % u(n)
subplot(3,1,1)
stem(n,u_n1)
title('x_1[n] = u[n]')

u_n2 = (n>=1); % u(n-1)
subplot(3,1,2)
stem(n,u_n2)
title('x_2[n] = u[n-1]')

delta_n = u_n1 - u_n2;
subplot(3,1,3)
stem(n,delta_n)
title('\delta[n] = u[n] - u[n-1]')

% Unit impulse signals from unit step signals method 2

% we do the same as method 1 except we create the delta function right off
% the bat with the step functions

delta_n = (n>=0) - (n>=1);
figure
stem(n,delta_n)
title('\delta[n] = u[n] - u[n - 1]')