close all;
clear all;
clc;

img = imread('C:\Users\Sara Latif Khan\OneDrive\Desktop\MatlabForImageProcessing\Images\tobago.jpg');

img_hsv = rgb2hsv(img);
img_v = img_hsv(:,:,3);
img_v = histeq(img_v);
img_hsv(:,:,3)= img_v;

img = rgb2hsv(img_hsv);
img_original = imread('C:\Users\Sara Latif Khan\OneDrive\Desktop\MatlabForImageProcessing\Images\tobago.jpg');

subplot(1,2,1), imshow(img_original), title('Original Image');
subplot(1,2,2), imshow(img), title('HE Image');

