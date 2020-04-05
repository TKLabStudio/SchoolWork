I = rgb2gray(imread('01.jpg'))
rgb2gray(I);
img=double(I);

[ca1 ch1,cv1,cd1] = dwt2(img,'haar');
figure;