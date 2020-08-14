% Plotting signum function

%{
Signum function = 1 for n > 0 
                =-1 for n < 0
                = 0 for n = 0
          
%}
   
clc
clear
close all
% Time range
n = -10:10;

% u[n]
u_n1 = (n>=0);

% u[-n]
u_n2 = (n<=0);


signum = u_n1 - u_n2;

stem(n, signum)
axis([-15 15 -1.5 1.5])
xlabel('Time Samples');
ylabel('Amplitude');
title('Plot of signum function')
