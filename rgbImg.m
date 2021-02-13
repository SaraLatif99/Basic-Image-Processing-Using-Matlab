%image = zeros(300,400,3,'uint8');
r=zeros(400);
g=r;
b=r;
r(1:200,1:200)=255;
g(1:200,201:end)=255;
b(201:400,1:200)=255;
r(201:end,201:end)=255;
 rgbimg=cat(3,r,g,b)
figure,imshow(rgbimg)