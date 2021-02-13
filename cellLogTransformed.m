clc
clear all
close all
img = imread('C:\Users\user\Desktop\Lab3Images\cell.tif');
imD=im2double(img);
c=1;
imLog=c*log(1+imD);
imLog=uint8(imLog*255);
subplot(1,2,1),imshow(img),title('Original Image')
subplot(1,2,2),imshow(imLog),title('Log Transformed Image')