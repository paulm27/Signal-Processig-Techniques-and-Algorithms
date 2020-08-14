% Can two different images have same histogram? Yes

clc
clear
close all
a = rgb2gray(imread('peppers.png'));
a = imread('peppers.png');
subplot(2,2,1);
imshow(a);
title('Original Image');

subplot(2,2,2);
imhist(a);
title('Histogram of Original Image');
axis tight;

g=fliplr(a);
subplot(2,2,3);
imshow(g);
title('Flipped Image');

subplot(2,2,4);
imhist(g);
title('Histogram of Flipped Image');
axis tight;