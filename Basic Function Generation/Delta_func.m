% Method 1 of plotting delta function

% time sample range
n = -100:100;

% creating delta function
delta_n = [zeros(1,100), 1, zeros(1,100)];
stem(n,delta_n)

% Method 2 of plotting delta function
n = -100:100;

% creating delta function
delta_n = (n == 0); % gives ... 0 0 0 1 0 0 0 ...
stem(n,delta_n)