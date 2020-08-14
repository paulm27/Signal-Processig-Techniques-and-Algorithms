% Sine and cosine plots
n = -10:10;
y = sin(2*pi*0.1*n); % 0.1 is the frequency (1 pointed repeated every 10 points; T = 10)
stem(n,y)

%EX:  Plotting 5[cos(0.49pi*n) + cos(0.51pi*n)]

clc 
clear
close all
n = -200:200;
x_n = 5 * (cos(0.49*pi*n) + cos(0.51*pi*n));
stem(n,x_n)
title('x[n] = 5[ cos(0.49\pin) + cos(0.51\pin) ]')