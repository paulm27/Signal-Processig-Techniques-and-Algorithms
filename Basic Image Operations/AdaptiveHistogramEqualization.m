% Adaptive Histogram Equalization (AHE)

%{
AHE differs from ordinary histogram equalization in the respect that the 
adaptive method computes several histograms, each corresponding to a distinct 
section of the image, and uses them to redistribute the lightness values 
of the image. It is therefore suitable for improving the local contrast 
and enhancing the definitions of edges in each region of an image.
%}

clc
clear 
close all
warning off;

% reading original image
x = imread('coins.png');
subplot(3,2,1);
imshow(x);
title('Original Image');

% Plotting histogram of original image pixels
subplot(3,2,2);
imhist(x);
title('Histogram of Original Image');

% global hist equalizing the image and plotting the image
j=histeq(x);
subplot(3,2,3);
imshow(j);
title('Image after Global histogram equalization');

% plotting histogram of image after global histeq
subplot(3,2,4);
imhist(j);
title('Histogram of the Image after Global histogram equalization');

% using adaptive histeq on image
j = adapthisteq(x);
subplot(3,2,5);
imshow(j);
title('Image after Local histogram equalization');

% plotting histogram of adaptive hist eq
subplot(3,2,6);
imhist(j);
title('Histogram of the Image after Loacal histogram equalization');