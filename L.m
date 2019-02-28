function [x,y]=L(c1,c2,r)
  m=20;
  p2=m-1;
  v=(-2*r)/p2;
  y2=[c2+2*r:v:c2];
  x2=c1+0*y2;
  p1=10-1;
  u=r/p1;
  x3=[c1:u:c1+r];
  y3=c2+0*x3;
  x=[x2,x3];
  y=[y2,y3];
  plot(x,y);
end