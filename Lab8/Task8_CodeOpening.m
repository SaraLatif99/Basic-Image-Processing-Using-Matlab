clear all
 close all

img=imread('binary.GIF');
%figure,imshow(A);
binaryImage=im2bw(img);
%Structuring element
sE=getnhood(strel('square',11));

r=floor(size(sE,1)/2);
c=floor(size(sE,2)/2);
%Pad array on all the sides
padArr=padarray(binaryImage,[r c],1);
%Intialize a matrix with size of matrix A
logicalZeros=false(size(binaryImage));
for i=1:size(padArr,1)-(2*r)
    for j=1:size(padArr,2)-(2*c)
       
        Temp=padArr(i:i+(2*r),j:j+(2*c));
       
        logicalZeros(i,j)=min(min(Temp-sE));
      
    end
end
%figure,imshow(~D);

A1=~logicalZeros;
%figure,imshow(A);
%A1=im2bw(A);
%Structuring element
sE2=getnhood(strel('square',11));
r=floor(size(sE2,1)/2);
c=floor(size(sE2,2)/2);

%Pad array on all the sides
padArr1=padarray(A1,[r c]);
logicalZeros1=false(size(A1));
for i=1:size(padArr1,1)-(2*r)
    
    for j=1:size(padArr1,2)-(2*c)
        Temp=padArr1(i:i+(2*r),j:j+(2*c));
        logicalZeros1(i,j)=max(max(Temp&sE2));
    end
end

%figure,imshow(D1);
subplot(1,2,1),imshow(img),title('Original');
subplot(1,2,2),imshow(logicalZeros1),title('Opening');


