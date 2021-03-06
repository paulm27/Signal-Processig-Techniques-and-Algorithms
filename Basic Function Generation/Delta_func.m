% Method 1 of plotting delta function

% time sample range
n = -100:100;

% creating delta function
delta_n = [zeros(1,100), 1, zeros(1,100)];
figure
stem(n,delta_n)
title('\delta[n]')

%%%% Method 2 of plotting delta function %%%%%%%
n = -100:100;

% creating delta function
delta_n = (n == 0); % gives ... 0 0 0 1 0 0 0 ...
figure
stem(n,delta_n)
title('\delta[n]')

% Example: addition of delta functions
% Plotting x(n) = 2delt(n+2) - delt(n-4), -5<= n <= 5
n = -5:5;
x_n = 2*(n==-2) - (n==4);
figure
stem(n,x_n)
axis([-7 7 -2 3])
xlabel('Time Samples');
ylabel('Amplitude');
title('x[n] = 2\delta[n-2] - 2\delta[n-4]')