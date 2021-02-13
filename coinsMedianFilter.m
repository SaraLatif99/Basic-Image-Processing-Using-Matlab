clear all;
close all;
img = imread('C:\Users\user\Desktop\MatlabImages\coins.png');
noiseImg = imnoise(img,'salt & pepper',0.01);
figure,imshow(noiseImg);
filImg = medfilt2(noiseImg);
figure,imshow(filImg);