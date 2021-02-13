clc;
clear all
close all
addpath('images/');
grayscale = imread('C:\Users\user\Desktop\cameraman.tif');
%figure, imshow(grayscale);
temp = grayscale;
for i = 1 : 256
    for j =1 : 256
        
        if(grayscale(i,j)<43)
            temp(i,j) = 22;
        elseif(grayscale(i,j)>44 && grayscale(i,j)<88)
            temp(i,j) = 66;
        elseif(grayscale(i,j)>89 && grayscale(i,j)<132)
            temp(i,j) = 112;
        elseif(grayscale(i,j)>133 && grayscale(i,j)<176)
            temp(i,j) = 140;
        elseif(grayscale(i,j)>177 && grayscale(i,j)<220)
            temp(i,j) = 180;
        else(grayscale>220);
            temp(i,j) = 220;
        end
    end
end
subplot(2,2,1),imshow(grayscale),title('OrignalImage');
subplot(2,2,2),imshow(temp),title('QuantizedImage');
         
        
