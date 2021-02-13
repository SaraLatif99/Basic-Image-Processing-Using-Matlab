close all;
clear all;
img = imread('C:\Users\Sara Latif Khan\OneDrive\Desktop\imgs\Lab1213\coins.png');
global_threshhold = graythresh(img);
segmented_image = imbinarize(img,global_threshhold);
subplot(1,3,1),imshow(img),title('Original Image');
subplot(1,3,2),imshow(global_threshhold),title('ThresholdImage');
subplot(1,3,3),imshow(segmented_image),title('Segmented Image');
