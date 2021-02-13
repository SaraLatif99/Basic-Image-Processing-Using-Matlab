clear 
clc
close all
originalImg = imread('C:\Users\user\Desktop\Matlab\cameraman.tif');
imshow(originalImg);
%%%%%Edge Detection Algorithm Sobel operator
  
%%%Convert the image to black and white
bw = uint8(originalImg);
bwdbl = double(bw);
figure()
imshow(bw);
%%%%Apply a mask in X
maskX = [-1 -2 -1; 0 0 0; 1 2 1];
[r,c]= size(bw);
OUT = zeros(r-3,c-3);
for idx =1 : (r -3)
    for jdx =1 : (c-3)
        hold on
        %rectangle('Position',[idx jdx 3 3]);
        %pause
        %drawnow
        bwSquare = bwdbl(idx : (idx +2), jdx : (jdx +2));
        res = maskX.*bwSquare;
        OUT(idx,jdx) = sum(sum(res));
    end
end
GX = OUT;
figure()
imshow(GX);
%%%%Apply a mask in Y
maskY = [-1 0 1,-2 0 2,-1 0 1];
for idx =1 : (r -3)
    for jdx =1 : (c-3)
        hold on
        %rectangle('Position',[idx jdx 3 3]);
        %pause
        %drawnow
        bwSquare = bwdbl(idx : (idx +2), jdx : (jdx +2));
        res = maskY.*bwSquare;
        OUT(idx,jdx) = sum(sum(res));
    end
end
GY = OUT;
figure()
imshow(GY);
%%%%Normalize the results of both masks
G = sqrt(GX.^2 + GY.^2);
figure()
imshow(G);
%%%%Plot the result

