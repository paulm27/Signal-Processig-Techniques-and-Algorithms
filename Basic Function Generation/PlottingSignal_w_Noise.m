% Generating and plotting z(n) = cos(0.04pi*n) + 0.2w(n), 0<n<50
% w(n) is gaussian random sequence with 0 mean and variance 1

% Discrete time range
n = 0:50;

% Discrete signal
x_n = cos(0.04*pi*n);

% Noise
w_n = randn(size(n));

% Added signal
z_n = x_n+w_n;

figure
subplot(212)
stem(n,x_n);
title('x[n] = cos(0.04\pin)')

subplot(211)
stem(n,z_n);
title('z[n] = cos(0.04\pin) + noise')
