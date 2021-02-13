clc;
clear all
close all
addpath('images/');
img = imread('C:\Users\user\Desktop\matt-steele-1392296-unsplash.jpg');
figure,imshow(img)
img1 = imread('C:\Users\user\Desktop\img1.jpg');
figure,imshow (img1)
img2 = imread('C:\Users\user\Desktop\img2.jpg');
figure,imshow(img2)
img3 = imread('C:\Users\user\Desktop\img3.jpg');
figure,imshow(img3)
subplot(2,2,1),imshow(img),title('image1');
subplot(2,2,2),imshow(img1),title('image2');
subplot(2,2,3),imshow(img2),title('image3');
subplot(2,2,4),imshow(img3),title('image4');
