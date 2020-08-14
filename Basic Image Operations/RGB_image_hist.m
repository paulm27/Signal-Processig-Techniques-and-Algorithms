% RGB Image histogram
clc
clear
close all
a = imread('Pauls Headshot.png');

figure
imshow(a);
title('Original Colored Image');

% We must analyze each color channel individually


% Seperating the red channel
rc = a(:,:,1);
figure
subplot(3,2,1);
imshow(rc)

% using counts_color to get a colored histogram for later
[counts_red binLocations] = imhist(rc);
subplot(322);
imhist(rc)
title('Histogram of the red channel');

% Separating the green channel
gc = a(:,:,2);
subplot(323);
imshow(gc)

% using counts_color to get a colored histogram for later
[counts_green binLocations]= imhist(gc);
subplot(324);
imhist(gc)
title('Histogram of the green channel');

% separating blue channel
bc=a(:,:,3);
subplot(325);
imshow(bc)

% using counts_color to get a colored histogram for later
[counts_blue binLocations] = imhist(bc);
subplot(326);
imhist(bc)
title('Histogram of the blue channel');

% Colored histogram
figure
plot(binLocations, counts_red, 'Red', binLocations, counts_green, 'Green', binLocations, counts_blue, 'Blue');
title('Colored histogram')