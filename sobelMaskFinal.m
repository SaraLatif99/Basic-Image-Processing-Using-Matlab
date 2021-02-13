clear 
clc
close all
originalImg = imread('C:\Users\user\Desktop\Matlab\cameraman.tif');
imshow(originalImg);
%%%%%Edge Detection Algorithm Sobel operator
  
%%%Convert the image to black and white
bw = uint8(originalImg);
figure()
imshow(bw);
%%%%Apply a mask in X
maskX = [-1 -2 -1; 0 0 0; 1 2 1];
[r,c]= size(bw);
for idx =1 : (r -3)
    for jdx =1 : (c-3)
        hold on
        rectangle('Position',[idx jdx 3 3]);
        %pause
        drawnow
    end
end
%%%%Apply a mask in Y
%%%%Normalize the results of both masks
%%%%Plot the result
