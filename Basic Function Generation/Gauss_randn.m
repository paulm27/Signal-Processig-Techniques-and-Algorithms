% Random number generation (gaussian)
nbins = 15;
a = randn(1,10000);
figure
hist(a,nbins)
title('Random number generation (gaussian)')

% Random number generation (gaussian) with non-zero mean
a = randn(1,10000);
x = 3+0.5*a; % mean + sdt_dev* a
figure
hist(x,nbins)
title('Random number generation (gaussian) with non-zero mean')