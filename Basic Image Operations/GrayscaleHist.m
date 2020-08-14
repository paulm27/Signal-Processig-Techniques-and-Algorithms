% Grayscale histogramclc
clear
close all

a = imread('Pauls Headshot.png');
imshow(a)
b = rgb2gray(a);

subplot(1,2,1)
imshow(b)
title('Grayscale Image')

subplot(1,2,2)
imhist(b)
title('Histogram of the pixel intensities (0-255)')
xlabel('Image Intensity')
ylabel('Amount of image intensity values')