I = imread('01.jpg')
D = dct2(I)
D1 = idct2(I)
subplot(2,2,1);
imshow(I);
subplot(2,2,2);
imshow(uint8(D));
subplot(2,2,3);
imshow(uint8(D1));
subplot(2,2,4);
imshow(log(abs(D)),[]);
colormap(gray(8));
colorbar;