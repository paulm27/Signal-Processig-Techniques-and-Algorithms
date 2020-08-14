% Subtracting an image (Finding the difference)
clc 
clear 
close all

% Reading the two images
x=imread('spot diff 1.jpg');
y=imread('spot diff 2.jpg');

%resizing the second image to match 1st one
g=size(x);
y=imresize(y,[g(1),g(2)]);

figure;
imshow(x);
title('Original image');
figure;
imshow(y);
title('Edited image');
figure;
imshow(y-x);
title('Difference of two images');