
img=imread('binary.gif');
%figure,imshow(A);
binImg1=im2bw(img);
%figure,imshow(A);
%A1=im2bw(A);
%Structuring element
se2=getnhood(strel('square',11));
r=floor(size(se2,1)/2);
c=floor(size(se2,2)/2);

%Pad array on all the sides
padArr1=padarray(binImg1,[r c]);
logicalZeros1=false(size(binImg1));
for i=1:size(padArr1,1)-(2*r)
    
    for j=1:size(padArr1,2)-(2*c)
        Temp=padArr1(i:i+(2*r),j:j+(2*c));
        logicalZeros1(i,j)=max(max(Temp&se2));
    end
end
%figure,imshow(A);
A=logicalZeros1;
%Structuring element
%B=getnhood(strel('square',11));
r=floor(size(se2,1)/2);
c=floor(size(se2,2)/2);
%Pad array on all the sides
padArr=padarray(A,[r c],1);
%Intialize a matrix with size of matrix A
logicalZeros=false(size(A));
for i=1:size(padArr,1)-(2*r)
    for j=1:size(padArr,2)-(2*c)
       
        Temp=padArr(i:i+(2*r),j:j+(2*c));
       
        logicalZeros(i,j)=min(min(Temp-B));
      
    end
end
subplot(1,2,1),imshow(img),title('Original');
subplot(1,2,2),imshow(~logicalZeros),title('Closing');


