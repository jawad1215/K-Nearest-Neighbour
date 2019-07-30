%class=knnclassify(sample,training,group)

% sample images

clear all
close all
clc 
cam = webcam('Integrated Webcam')


preview(cam);
cam.Resolution='640x480';
img=snapshot(cam);
a = reshape(img, 1, []);
imshow(img)

closePreview(cam)
clear('cam');

A=[a
   ];


a1=imread('D:\Study\FYP\testing\jawad.jpg');

ImgVector1 = reshape(a1, 1, []);
b11=ImgVector1;

a2=imread('D:\Study\FYP\testing\nouman.jpg');

ImgVector2 = reshape(a2, 1, []);
b22=ImgVector2;

a3=imread('D:\Study\FYP\testing\ahmad.jpg');

ImgVector3 = reshape(a3, 1, []);
b33=ImgVector3;




a5=imread('D:\Study\FYP\testing\shahab.jpg');

ImgVector5 = reshape(a5, 1, []);
b55=ImgVector5;






B=[b11;
    b22;
    b33;
   
    b55;
   
   ];






% Group Matrix

G={' Jawad ';
    'Nouman';
    'Ahmad';
    
    'Shahab';
    
    };


% Function

class=knnclassify(A,B,G);

% Display result

disp('Result:');
display(class);

