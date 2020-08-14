%  Adding two images (color)

clc
clear 
close all

%read first image
I = imread('stars.jpg');
figure;
imshow(I);
title('First Image');
I_size=size(I);

%read second image
J = imread('canyon.JPG');
J_size = size(J);
imshow(J)
title('Second image before resize')

% resizing using function resize
% imresize(image, [numrows, numcolumns])
% here we resized J to have the same rows and columns as g (first image)
J=imresize(J,[I_size(1),I_size(2)]);
figure;
imshow(J);
title('Second Image after resize');

added_image = J+I;
figure
imshow(added_image)
title('Added Image');