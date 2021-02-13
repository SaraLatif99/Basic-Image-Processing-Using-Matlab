close all;
clear all;
clc;

img = imread('C:\Users\Sara Latif Khan\OneDrive\Desktop\MatlabForImageProcessing\Images\coffee.jpg');

R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

subplot(1,3,1), imshow(R), title('R');
subplot(1,3,2), imshow(G), title('G');
subplot(1,3,3), imshow(B), title('B');

img_hsv = rgb2hsv(img);
size(img_hsv);

H = img_hsv(:,:,1);
S = img_hsv(:,:,2);
V = img_hsv(:,:,3);

figure,
subplot(1,3,1), imshow(H), title('H');
subplot(1,3,2), imshow(S), title('S');
subplot(1,3,3), imshow(V), title('V');

figure, subplot(1,2,1), imshow(img), title('RGB');
subplot(1,2,2), imshow(img_hsv), title('HSV');

