subplot(2,4,1);
imshow(grayslice(I,128),gray(128))
subplot(2,4,2);
imshow(grayslice(I,64),gray(64))
subplot(2,4,3);
imshow(grayslice(I,32),gray(32))
subplot(2,4,4);
imshow(grayslice(I,16),gray(16))
subplot(2,4,5);
imshow(grayslice(I,8),gray(8))
subplot(2,4,6);
imshow(grayslice(I,4),gray(4))
subplot(2,4,7);
imshow(grayslice(I,2),gray(2))

q=uint8(floor(double(I)/64)*64)
imshow(q)

D=[0 128;192 64]
r=repmat(D,128,128);
x=I>r;
imshow(x)