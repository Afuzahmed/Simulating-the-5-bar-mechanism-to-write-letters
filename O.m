function [x,y]=O(c1,c2,r)

p=30-1;
m=(360-1)/p;
i=[1:m:360];
x=c1+r/2+(r/2).*cosd(i);
y=c2+r+r.*sind(i);
%axis([-5 10 -5 10]);
plot(x,y)
end