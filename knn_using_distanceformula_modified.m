
close all
clc 

ext='*.jpg'
folder='D:\Study\FYP\testing';
image=uigetfile([folder '\' ext])
xx1=fullfile(folder,image)
   


x1=imread(xx1);
y1 = imresize(x1, [256 256]);
ImgVector11 = reshape(y1, 1, []);
y11=ImgVector11;
imshow(y1)



%Training images

a1=imread('D:\Study\FYP\training\bedroom_training.jpg');
b1 = imresize(a1, [256 256]);
ImgVector1 = reshape(b1, 1, []);
b11=ImgVector1;

a2=imread('D:\Study\FYP\training\mountain_training.jpg');
b2 = imresize(a2, [256 256]);
ImgVector2 = reshape(b2, 1, []);
b22=ImgVector2;

a3=imread('D:\Study\FYP\training\building_training.jpg');
b3 = imresize(a3, [256 256]);
ImgVector3 = reshape(b3, 1, []);
b33=ImgVector3;

a4=imread('D:\Study\FYP\training\cup_training.jpg');
b4 = imresize(a4, [256 256]);
ImgVector4 = reshape(b4, 1, []);
b44=ImgVector4;

a5=imread('D:\Study\FYP\training\glass_training.jpg');
b5 = imresize(a5, [256 256]);
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
B=[{'Bedroom'} {'Mountain'} {'Biulding'} {'cup'} {'glass'} ];


M = min(A(~ismember(A,0)));
ind = find(M==A);
B(ind)








