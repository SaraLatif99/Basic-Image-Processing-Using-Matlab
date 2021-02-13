clear all;
close all;
I = imread('C:\Users\user\Desktop\MatlabImages\cameraman.tif');
imshow(I)
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');
BW3 = edge(I,'prewitt');
BW4 = edge(I,'roberts');
figure;
imshowpair(BW1,BW2,'montage')
title('Sobel Filter                                   Canny Filter');
figure;
imshowpair(BW3,BW4,'montage')
title('prewitt Filter                               roberts Filter');