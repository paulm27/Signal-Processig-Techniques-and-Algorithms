% Plotting sinc function

% Time range 
t = -10:0.001:10;

% sinc func definition
y = sin(t)./t;

plot(t,y)
xlabel('Time')
ylabel('Amplitude')