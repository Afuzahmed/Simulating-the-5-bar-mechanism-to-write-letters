function [C1,C2,r]=fivebarworkspace(yh,l)
global l1 l2 l3 l4 l5;

n=30;
p=n-1;
maxmworkspace=l2+l3+l4+l5-l1;
xcrt=(l1^2+(l2+l3)^2-(l4+l5)^2)/(2*l1);
ymax=sqrt((l2+l3)^2-xcrt^2);
xmin=l1-(l4+l5);
xmax=l2+l3;
xh=sqrt((l4+l5)^2-yh^2);
ymin=-ymax;
yavg=0;
w=(ymax-yh)/p;
y=[ymax:-w:yh];
x1=l1-sqrt((l4+l5)^2-y.^2);
x2=sqrt((l2+l3)^2-y.^2);
for i=1:n
    x=x1(i);
    yava=y(i)-yh;
    ra=yava/2;
   if(x+l*ra<=x2(i))
       break;
   end
end
C1=x+ra/2;
C2=yh;
r=ra;
end