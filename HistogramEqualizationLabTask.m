close all;
clc;
gimg=imread('C:\Users\user\Desktop\MatlabImages\cameraman.tif');
figure,imshow(gimg);
title('Original Image');
figure, histogram(gimg);
title('Original Image Histogram');
I = gimg; 
[row,col] = size(I); 
blank = uint8(zeros(row,col));
n = row*col;
freq = zeros(256,1);
pdf = zeros(256,1);
cdf = zeros(256,1);
out = zeros(256,1);
cum = zeros(256,1);
for i = 1:row
    for j = 1:col
        value = I(i,j);
        freq(value+1) = freq(value+1)+1;
        pdf(value+1) = freq(value+1)/n;
    end
end
sum = 0;
L = 255;

for i = 1:size(pdf)
    sum = sum + freq(i);
    cum(i) = sum;
    cdf(i) = cum(i)/n;
    out(i) = round(cdf(i)*L);
end

for i = 1:row
    for j = 1:col
        blank(i,j) = out(I(i,j)+1);
    end
end
figure,imshow(blank);
title('Image with equalized Histogram ');
figure, histogram(blank); 
title('Equalized Histogram');