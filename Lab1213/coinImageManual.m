clear all;?
close all;
clc
im1=imread('C:\Users\Sara Latif Khan\OneDrive\Desktop\imgs\Lab1213\coins.png');
im1=double(im1);
sum=0; sum1=0; sum2=0; T1=0; T2=0; mean1 = 0; mean2 = 0;?
?
?
R2=im1(:,:,1);?
G2=im1(:,:,2);?
B2=im1(:,:,3);?
?
for i = 1:size(R2,1)?
for k = 1:size(R2,2)?
I3(i,k)= 0.299 * R2(i,k) + 0.587 * G2(i,k) + 0.114 * B2(i,k);?
end?
end?
imwrite(I3,'GS.jpg');?
%I3=double(I3)?
% figure(1)?
% imshow(I3)?
?
for i = 1:size(I3,1)?
for k = 1:size(I3,2)?
sum=sum+double(I3(i,k));?
end?
end?
T1 =(sum)/(size(I3,1)*size(I3,2))?
limit=1;?
T2 = T1+limit+1;?
?
while(abs(T2 - T1) > limit)?
T1 = T2;?
fore=0; back=0;?
for i = 1:size(I3,1)?
for k = 1:size(I3,2)?
if(I3(i,k)> T2)?
fore=fore+1;?
sum1=sum1+double(I3(i,k));?
else?
back=back+1;?
sum2=sum2+double(I3(i,k));?
end?
end?
end?
mean1=(sum1)/(fore);?
mean2=(sum2)/(back);?
T2 = (mean1 + mean2) / 2;?
end?
% ?
for i = 1:size(I3,1)?
for k = 1:size(I3,2)?
if(I3(i,k)> T2)?
im2(i,k)=255;?
else?
im2(i,k)=0;?
end?
end?
end?
imwrite(im2,'countcoinsBW.jpg');?
img3 = imfill(im2,'holes');?
[B,L,n,A] = bwboundaries(im2); ?
?
NumberOfCoins = n