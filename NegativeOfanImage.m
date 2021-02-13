clear all
close all
img = imread('C:\Users\user\Desktop\cameraman.tif');
imgN = 255 - img;
subplot(1,2,1), imshow(img),title('Original Image')
subplot(1,2,2),imshow(imgN),title('Negtive')
Img -ve for Color