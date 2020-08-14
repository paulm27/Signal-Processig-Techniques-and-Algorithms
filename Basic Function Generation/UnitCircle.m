% plotting unit circle
clear
clc

sym t;

% angles of circle go from 0 to 2pi
t = 0:0.001:2*pi;

x = cos(t);
y = sin(t);
plot(x,y);
title('unit circle')
axis square;