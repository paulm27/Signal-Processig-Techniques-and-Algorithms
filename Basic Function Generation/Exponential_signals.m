% Real exponential signals

% Time range
n =-20:20;
figure

% Defining function
x_n=(0.9).^n;
stem(n,x_n);
xlabel('Time sample');
ylabel('Amplitude');
title('x[n] = 0.9^n (stable because converging to 0)')

figure

% Defining function
x_n=(1.2).^n;
stem(n,x_n);
xlabel('Time sample');
ylabel('Amplitude');
title('x[n] = 0.9^n (unstable because going to infinity)')

%%%%% Complex exponential signal %%%%%%

% Defining complex value -1+3j
alpha = -0.1+0.3j;

%defining the signal
x_n = exp(alpha*n);

figure
subplot(4,1,1);
stem(n,real(x_n))
xlabel('Time Samples');
ylabel('Real Part');

subplot(4,1,2);
stem(n,imag(x_n));
xlabel('Time Samples');
ylabel('Imaginary Part');

subplot(4,1,3);
stem(n,abs(x_n));
xlabel('Time Samples');
ylabel('Magnitude');

subplot(4,1,4);
stem(n,angle(x_n));
xlabel('Time Samples');
ylabel('Phase');
