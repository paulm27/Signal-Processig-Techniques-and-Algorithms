% sort function and fliplr
clear
clc


x = input('Enter the elements of the array: ');
disp('Unsorted vector is')
x

disp('Sorted Vector is (from lowest to highest)')
y = sort(x) 

disp('flipped vector is (from highest to lowest)')
z = fliplr(y)

