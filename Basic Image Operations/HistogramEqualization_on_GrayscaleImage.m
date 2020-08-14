% Histogram Equalization on GrayScale Image
%{
Histogram equalization is a method in image processing of contrast adjustment 
using the image's histogram. Histogram equalization is the best method for 
image enhancement. It provides better quality of images without loss of any 
information.
%}

clc
clear 
close all
warning off

a=imread('Pauls Headshot.png');
b=rgb2gray(a);
subplot(2,2,1);
imshow(b);
title('Original Grayscale Image');

subplot(2,2,3);
imhist(b);
title('Histogram of Original Grayscale Image');

j=histeq(b);
subplot(2,2,2);
imshow(j);
title('Image after histogram equalization');

subplot(2,2,4);
imhist(j);
title('Histogram of Image after histogram equalization');