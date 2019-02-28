function [x,y]=D(c1,c2,r)
n=30;
p=n-1;
m=(90+90)/p;
i=[-90:m:90];
x1=c1+r.*cosd(i);
y1=c2+r+r.*sind(i);

%axis([-5 10 -5 10]);
%plot(x,y);
p1=10-1;
m2=-2*r/p1;
y2=[c2+2*r:m2:c2];
x2=c1+0*y2;
x=[x1,x2]; 
y=[y1,y2];
%axis([-5 5 -5 5])
plot(x,y);
end
