function [x,y]=A(c1,c2,r)
p=15-1;
v=((2*r)*tand(10))/p;
a1=[0:v:((2*r)*tand(10))];
b1=a1*tand(80);
x1=c1+a1;
y1=c2+b1;
a2=[((2*r)*tand(10)):v:((4*r)*tand(10))];
b2=((4*r)*tand(10)-a2)/(tand(10));
x2=c1+a2;
y2=c2+b2;
a4=[(3*r)*tand(10):-v:(r)*tand(10)];
b4=r+0*a4;
x4=c1+a4;
y4=c2+b4;

x=[x1,x2,x4];
y=[y1,y2,y4];
plot(x,y);
end