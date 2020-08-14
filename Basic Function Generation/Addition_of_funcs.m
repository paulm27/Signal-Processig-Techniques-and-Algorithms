% plotting the addition of functions
clear
clc

% Time range
n = 0:20;

% ramp function from n= 0 to n=10
x1_n = n .* ((n>=0) - (n>=10)) ;

subplot(3,1,1)
stem(n,x1_n)
title('x_1[n] = n from n= 0 to n=10')

% exponentially decaying signal from n = 10 to 20
x2_n = 10 * exp(-0.3 *(n-10)) .* ((n>=10) - (n>=20));

subplot(3,1,2)
stem(n,x2_n)
title('x_2[n] = e^{-0.3(n-10)} * ( u[n-10] - u[n-20] )')

% added signal
x_n = x1_n + x2_n;
subplot(3,1,3)
stem(n, x_n)
title('x[n] = x_1[n] + x_2[n]')