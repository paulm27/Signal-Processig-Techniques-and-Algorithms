% Unit ramp signal

% Time range
n = -20:20;

% Ramp signal generation
ramp_n = (n>=0) .* n;
stem(n,ramp_n)
title('Ramp signal')
axis([-25 25 -2 25])