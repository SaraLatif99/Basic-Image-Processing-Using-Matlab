clear all;
close all;
img = imread('C:\Users\user\Desktop\MatlabImages\cameraman.tif');
noiseImg = imnoise(img,'salt & pepper',0.1);
figure,imshow(noiseImg);
filImg = medfilt2(noiseImg);
figure,imshow(filImg);