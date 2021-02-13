clear all
close all
image= randi([1,255],600,600);
imagenoise=imnoise(image,'salt & pepper', 0.9);
[r,c]=size(image);
F=zeros(r,c);
for i=2:r-1
    for j=2:c-1
        flt=[imagenoise(i-1,j-1),imagenoise(i-1,j),imagenoise(i-1,j+1),imagenoise(i,j-1),imagenoise(i,j),imagenoise(i,j+1),imagenoise(i+1,j-1),imagenoise(i+1,j),imagenoise(i+1,j+1)];
        F(i,j)=median(flt);
    end
end
figure,imshow(imagenoise,[]);
figure,imshow(F,[]);
