clear 
clc
close all
original =imread('C:\Users\user\Desktop\Matlab\cameraman.tif');
dblimg=im2double(original);
[m,n]=size(original);
%PREWIT
N(1:m,1:n)=0;
for i=1:m-2
    for j=1:m-2
        N(i,j)=-1*dblimg(i,j)-1*dblimg(i,j+1)-1*dblimg(i,j+2)+0+0+0+1*dblimg(i+2,j)+1*dblimg(i+2,j+1)+1*dblimg(i+2,j+2);
    end
end
O(1:m,1:n)=0;
for i=1:m-2
    for j=1:m-2
        O(i,j)=-1*dblimg(i,j)+0+1*dblimg(i,j+2)-1*dblimg(i+2,j)+0+1*dblimg(i+1,j+2)-1*dblimg(i+2,j)+0+1*dblimg(i+2,j+2);
    end
end
figure;
subplot(2,2,1)
imshow(N)
title('Prewit Gx');
subplot(2,2,2)
imshow(O)
title('Prewit Gy');
Z=N+O;
subplot(2,2,3)
imshow(Z)
title('Prewit Gx+Gy');
subplot(2,2,4)
imshow(dblimg)
title('Original Image');