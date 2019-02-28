function [x,y]=P(c1,c2,r) 
  p2=20-1;
  u=(2*r)/p2;
  y1=[c2:u:c2+2*r];
  x1=c1+0*y1;
  m=-180/p2;
  j=[90:m:-90];
  y2=c2+r+(r/2)+(r/2).*sind(j);
  x2=c1+(r/2).*cosd(j);
  x=[x1,x2];
  y=[y1,y2];
  plot(x,y);
end