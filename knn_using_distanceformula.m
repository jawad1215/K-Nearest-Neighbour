

close all
clc 

x1=imread('D:\Study\FYP\testing\im222.jpg');
y1 = imresize(x1, [256 NaN]);

ImgVector11 = reshape(y1, 1, []);
y11=ImgVector11;
imshow(y1)





%Training images

a1=imread('D:\Study\FYP\testing\bedroom_training.jpg');
b1 = imresize(a1, [256 NaN]);
ImgVector1 = reshape(b1, 1, []);
b11=ImgVector1;

a2=imread('D:\Study\FYP\testing\mountain_training.jpg');
b2 = imresize(a2, [256 NaN]);
ImgVector2 = reshape(b2, 1, []);
b22=ImgVector2;

a3=imread('D:\Study\FYP\testing\buildings_training.jpg');
b3 = imresize(a3, [256 NaN]);
ImgVector3 = reshape(b3, 1, []);
b33=ImgVector3;

a4=imread('D:\Study\FYP\testing\cup_training.jpg');
b4 = imresize(a4, [256 NaN]);
ImgVector4 = reshape(b4, 1, []);
b44=ImgVector4;

a5=imread('D:\Study\FYP\testing\glass_training.jpg');
b5 = imresize(a5, [256 NaN]);
ImgVector5 = reshape(b5, 1, []);
b55=ImgVector5;

a= [y11;b11];
d1=pdist(a,'euclidean');

b= [y11;b22];
d2=pdist(b,'euclidean');

c= [y11;b33];
d3=pdist(c,'euclidean');

d= [y11;b44];
d4=pdist(d,'euclidean');

e= [y11;b55];
d5=pdist(e,'euclidean');

A = [d1 d2 d3 d4 d5];
M = min(A);

if (M==d1)
    disp(' It is Bedroom')
end

 if(M==d2)
     disp(' It is Mountain')
 end
  
    if (M==d3)
   disp(' It is Buildings')
    end
    
 if(M==d4)
   disp(' It is cup ')
 end
if (M==d5)
  
     disp(' It is glass')
 end

     


