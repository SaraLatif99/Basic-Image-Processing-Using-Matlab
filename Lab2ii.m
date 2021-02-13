clc;
clear all
close all
addpath('images/');
colorimg = imread('C:\Users\user\Desktop\img3.jpg');
[row,col,ch]=size(colorimg);
%figure, imshow(grayscale);
temp = colorimg;
for ch = 1 : 3
    for i = 1 : row
        for j =1 : col
            if(colorimg(i,j)<43)
              temp(i,j,ch) = 22;
            elseif(colorimg(i,j)>44 && colorimg(i,j)<88)
              temp(i,j,ch) = 66;
            elseif(colorimg(i,j)>89 && colorimg(i,j)<132)
              temp(i,j,ch) = 112;
            elseif(colorimg(i,j)>133 && colorimg(i,j)<176)
              temp(i,j,ch) = 140;
            elseif(colorimg(i,j)>177 && colorimg(i,j)<220)
              temp(i,j,ch) = 180;
            else(colorimg>220);
              temp(i,j,ch) = 220;
            end
        end
    end
end
subplot(2,2,1),imshow(colorimg),title('OrignalImage');
subplot(2,2,2),imshow(temp),title('QuantizedImage');
         
        
