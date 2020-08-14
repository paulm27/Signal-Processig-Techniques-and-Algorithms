%% ECE 148 HW 7: Estimation of Range Profiles
% Paul Monroy
%Please run by section individually not as a whole (first plot would change if so)

%% Reconstructing Image
close all;
clear
clc

%load data
data = load('gpr_data.mat');

%initializing variables
B = 1.024e9; %bandwidth
N = 128; %number of frequenc steps
v = 3e8/sqrt(6); %modifying our propagation speed
n = 1:N; %n elements
R = n.*v/(2*B)';%Modifying the total distance travelled 

%getting range profile using FFT, 1024 bins
range_profile = fft((data.F), 1024); 

%phase corrected range profile
for n = 1:128
    range_profile(n,:) = range_profile(n,:).* exp(-2*pi*1i*(data.f(1)/B)*n);
end

% scaled color image where we take vector data.da, vector R, over matrix of
% range profile
figure;
image1 = imagesc(data.da, flip(R), abs(range_profile));
title('Reconstructed Image');
xlabel('Distance Along Aperture (m)');
ylabel('Depth (m)');
colormap jet
colorbar

%setting axes equally scaled and limiting to get a better image
axis equal
ylim([0 0.4])
xlim([0 4])

%% 200 Frame Video

close all;
clear
clc

%load data
data = load('gpr_data.mat');

%initializing variables
B = 1.024e9; %bandwidth
N = 128; %number of frequenc steps
v = 3e8/sqrt(6); %modifying our propagation speed
n = 1:N; %n elements
R = n.*v/(2*B)';%Modifying the total distance travelled 

%getting range profile using FFT, 1024 bins
range_profile = fft((data.F), 1024);

%getting length of  data.da
len = length(data.da);
for i = 2:len
    % scaled color image where we take vector data.da, vector R, over matrix of
    % range profile
    image2 = imagesc(data.da(1:i),flip(R),abs(range_profile));
    title(sprintf("Magnitude vs Distance Along Aperture, Antenna Position at %g meters", data.da(i)));
    xlabel('Distance Along Aperture (m)');
    ylabel('Magnitude');
    colormap jet
    colorbar
    %setting axes equally scaled and limiting to get a better image
    axis equal
    ylim([0 0.4])
    xlim([0 4])
    % delay new iteration by 0.01s to get a video-looking plot
    pause(0.01)
  
end
