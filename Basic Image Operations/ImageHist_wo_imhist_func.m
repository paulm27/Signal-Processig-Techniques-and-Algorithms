% Plotting histogram of image without built in function
%{
images have intensity value of 0-255, but MATLAB indices can only be
1-256. In order to figure out how many "intensity" values each image has,
we first set an empty zero vector. Then, we find the intensity at
location x(i,j). Because this intensity value will be from 0-255, we will
add 1 to it to match our indices. This new intensity value becomes the
index of h in a sense because we are tracking the number of intensity values.
In the for loop, we add 1 to the pre-existing value in the 'h' vector
(which is initially zero). Hence, we are keeping track of how many values
show up in the image.
%}
clc
clear 
close all
warning off;

x = imread('Pauls Headshot.png');
x = rgb2gray(x);
figure
imshow(x)
title('Grayscale image')
h = zeros(1,256);
[r,c] = size(x);
n = 0:255;
figure
for i=1:r
    for j=1:c
        h(x(i,j)+1) = h(x(i,j)+1)+1;
    end
stem(n, h);
title('Animation of histogram')
drawnow limitrate;
end

figure;
histogram(x);
title('Histogram')