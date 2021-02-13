clc;
close all;
clear all;
a=imread('C:\Users\user\Desktop\MatlabImages\cameraman.tif');%Reads the image
an=imnoise(a,'gaussian');% adds noise
m=input('enter mask size: ');
n=m^2;         % n contains the number of elements in the mask 
o=round(m/2);  % this value is used to iterate through the loop and image matrix
p=o-1;         % this value is also used to iterate o,p are unique to a specific mask
[row,col]=size(an);
b=zeros(row-o,col-o);  % while performing filtering outer most pixels get removed from both row and column
mask=zeros(m);
for x=1:n
  mask(x)=1/n;    %Basically the mask will contain a average terms i.e for 3x3 mask each term will be 1/9
end
for x=o:row-o+1
  for y=o:col-o+1
    c=0;
    for i=-p:p
      for j=-p:p
        c=c+an(x+i,y+i)*mask(1);  %%%%%Ideally we should be iterating through each term of the mask 
                                  %%%%%%but all terms in mask are equal so I have taken a single term.                              
      end
    end
    b(x-p,y-p)=c;
  end
end
figure;
subplot(2,2,1);
imshow(a);
title('Orginal');
subplot(2,2,2);
imshow(an);
title('Image with gaussian noise');
subplot(2,2,3:4);
imshow(uint8(b));
title('LowPass filtered');