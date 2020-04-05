function y= fl_stein_48(x)
%
% FL_STEIN applies Floyd-Steinberg error duffusion to an image x
% , which is assumed to be of type uint8.
%
height=size(x,1);
width=size(x,2);
y=uint8(zeros(height, width));
z=zeros(height+4, width+4);
z(3:height+2,3:width+2)=x;
for i=3:height+2
	for j=3:width+2
		if z(i, j) < 128
			y(i-1,j-1)=0;
			e= z(i,j);
		else
			y(i-1,j-1)=255;
			e= z(i,j)-255;
		end
		z(i,j+1)=z(i,j+1)+7*e/48;
		z(i+1,j-2)=z(i+1,j-2)+3*e/48;
		z(i+1,j-1)=z(i+1,j-1)+5*e/48;
        z(i+1,j)=z(i+1,j)+7*e/48;
        z(i+1,j+1)=z(i+1,j+1)+5*e/48;
        z(i+1,j+2)=z(i+1,j+2)+3*e/48;
		z(i+2,j-2)=z(i+2,j-2)+e/48;
        z(i+2,j-1)=z(i+2,j-1)+3*e/48;
        z(i+2,j)=z(i+2,j)+5*e/48;
        z(i+2,j+1)=z(i+2,j+1)+3*e/48;
        z(i+2,j+2)=z(i+2,j+2)+e/48;
	end
end