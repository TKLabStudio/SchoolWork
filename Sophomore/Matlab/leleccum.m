load leleccum;
s = leleccum;
Len = length(s);
[ca1,cd1] = dwt(s,'db1');
a1 = upconef('a',cal,'db1',1,Len);
d1 = upconef('d',cal,'db1',1,Len)
s1=a1+d1;
figure;
subplot(2,2,1);plot(s);
subplot(2,2,2);plot(ca1);
subplot(2,2,3);plot(cd1);
subplot(2,2,4);plot(s1, 'r-');