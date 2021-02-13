
clear all
close all

img=imread('binary.GIF');
%figure,imshow(A);
binaryImg=im2bw(img);
%Structuring element
B2=getnhood(strel('square',11));   %containing the height associated with each of
                                                       %the structuring element neighbors. H is all zeros for a flat structuring element.
row=floor(size(B2,1)/2);
col=floor(size(B2,2)/2);
%Pad array on all the sides    pads array A with 0s (zeros). padsize is a vector of
%nonnegative integers that specifies both the amount of padding to add and the dimension along which to add it
padArr=padarray(binaryImg,[row col]);
logicalZeros=false(size(binaryImg));      %Return logical 0 (false)
for i=1:size(padArr,1)-(2*row)

    for j=1:size(padArr,2)-(2*col)
        Temp=padArr(i:i+(2*row),j:j+(2*col));
        logicalZeros(i,j)=max(max(Temp&B2));
    end
end

%figure,imshow(D);
subplot(1,2,1),imshow(img),title('Original');
%subplot(1,3,2),imshow(A),title('Binary');
subplot(1,2,2),imshow(logicalZeros),title('Dilation');