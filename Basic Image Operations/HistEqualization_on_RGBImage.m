%Histogram Equalization on Colored Image 

%{
 - Converting RGB (red, green, blue) to HSV (hue, saturation, value)
HUE: It is nothing but the color. It is signified as a point in a 360 degree
circle
- SATURATION: This is directly connected to the intensity of the color(
range of gray in the color space). It is normally represented in terms of
percentage (0% to 100%). If 100%, it signifies the intense color presence
- VALUE:  This can be called brightness and just like Saturation is represented
as a percentage. Range is from 0 and goes till 100%. '0' represents black
and 100% represents the brightest
- To Equalize a colored image, we will operate on the VALUE of the image
because it cannot be done in RGB
- Our intention is to work and plot in the RGB domain. Therefore, once we
get the HSV equalization, we convert it back to RGB
%} 

clc;
clear 
close all;
warning off;

% read original image and plot it
a = imread('low contrast rgb 2.jpg');
subplot(1,2,1);
imshow(a);
title('Original Image');

% converting original image pixels to HSV
b = rgb2hsv(a);

% b(:,:,1) is HUE, b(:,:,2) is SATURATION, b(:,:,3) is VALUE (what we want
% to work with)
% applying histogram equalization on the VALUE and updating that
b(:,:,3) = histeq(b(:,:,3));

%converting back to RGB
rs = hsv2rgb(b);
subplot(1,2,2);
imshow(rs);
title('Image after Histogram Equalization (better contrast)');