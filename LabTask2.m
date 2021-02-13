clc;
clear all
close all
addpath('images/');
img = imread('C:\Users\user\Desktop\img1.jpg');
imshow(img)
imrsz1 =imresize(img,[256,256]);
imrsz2=imresize(img,[128,128]);
imrsz3=imresize(img,[64,64]);
imrsz4=imresize(img,[32,32]);
imrsz5=imresize(img,[16,16]);
imrsz6=imresize(img,[8,8]);
imrsz7=imresize(img,[4,4]);
subplot(3,3,1),imshow(imrsz2),title('image1');
subplot(3,3,2),imshow(imrsz3),title('image2');
subplot(3,3,3),imshow(imrsz4),title('image3');
subplot(3,3,4),imshow(imrsz5),title('image4');
subplot(3,3,5),imshow(imrsz6),title('image5');
subplot(3,3,6),imshow(imrsz7),title('image6');


