close all;
clear all;
gimg = imread('C:\Users\user\Desktop\MatlabImages\cameraman.tif');
figure,imshow(gimg);
figure, histogram(gimg);
%% Histogram equalization without matlab function
I = gimg; 
% size of the input image.
[row,col] = size(I); 
% uint 8 blamk canvas
blank = uint8(zeros(row,col));
% number of pixels.
n = row*col;
% frequency pdf and cdf and some variables
f = zeros(256,1);
pdf = zeros(256,1);
cdf = zeros(256,1);
out = zeros(256,1);
cum = zeros(256,1);
% Nested for loop
%freq counts the occurrence of each pixel value.
%The probability of each occurrence is calculated by pdf.

for i = 1:row
    for j = 1:col
        value = I(i,j);
        f(value+1) = f(value+1)+1;
        pdf(value+1) = f(value+1)/n;
    end
end

% finding cdf
%no_bins=255;
%The cumulative distribution probability(cdf) is calculated. 
sum = 0;
L = 255;
for i = 1:size(pdf)
    sum = sum + f(i);
    cum(i) = sum;
    cdf(i) = cum(i)/n;
    out(i) = round(cdf(i)*L);
end

for i = 1:row
    for j = 1:col
        blank(i,j) = out(I(i,j)+1);
    end
end

figure,imshow(blank); title('My hist Image');
figure, histogram(blank); title('My funtion Histogram');