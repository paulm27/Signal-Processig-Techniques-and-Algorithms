% Plotting unit step function u(n)
n = -20:20;

% Logic method, gives a '1' wherever the statment is true
unit_n = (n >= 0); % gives ...0 0 0 1 1 1 1 ...
stem(n,unit_n)
axis([-20 20 -2 2])

% Plotting 10u(n) - 5u(n-5) - 10u(n-10) + 5u(n-15)
n = 0:20;
x_n = 10*(n>=0) - 5*(n>=5)- 10*(n>=10) + 5*(n>= 15);
stem(n,x_n)
axis([-5 25 -10 15])