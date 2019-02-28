clear all
global l1 l2 l3 l4 l5;
l1=5;
l2=4;
l3=5.5;
l4=5.5;
l5=4;
yh=input('give the height from reference :');
if(yh>9.1)
    break;
end
l=12;
[C1,C2,r]=fivebarworkspace(yh,l);
[xtrace1,ytrace1]=D(C1,C2,r);
[xtrace2,ytrace2]=E(C1,C2,r);
a1=abs(max(xtrace1)-min(xtrace1));
xtrace2=a1+r/4+xtrace2;
[xtrace3,ytrace3]=A(C1,C2,r);
a2=abs(max(xtrace2)-min(xtrace2));
xtrace3=a1+a2+2*(r/4)+xtrace3;
[xtrace4,ytrace4]=D(C1,C2,r);
a3=abs(max(xtrace3)-min(xtrace3));
xtrace4=a1+a2+a3+3*(r/4)+xtrace4;
[xtrace5,ytrace5]=P(C1,C2,r);
a4=abs(max(xtrace4)-min(xtrace4));
xtrace5=a1+a2+a3+a4+r+xtrace5;
[xtrace6,ytrace6]=O(C1,C2,r);
a5=abs(max(xtrace5)-min(xtrace5));
xtrace6=a1+a2+a3+a4+a5+5*(r/4)+xtrace6;
[xtrace7,ytrace7]=O(C1,C2,r);
a6=abs(max(xtrace6)-min(xtrace6));
xtrace7=a1+a2+a3+a4+a5+a6+6*r/4+xtrace7;
[xtrace8,ytrace8]=L(C1,C2,r);
a7=abs(max(xtrace7)-min(xtrace7));
xtrace8=a1+a2+a3+a4+a5+a6+a7+7*(r/4)+xtrace8;
xtrace=[xtrace1,xtrace2,xtrace3,xtrace4,xtrace5,xtrace6,xtrace7,xtrace8];
ytrace=[ytrace1,ytrace2,ytrace3,ytrace4,ytrace5,ytrace6,ytrace7,ytrace8];
axis([-5 10 -5 10]);
O2x=0;O2y=0;O4x=l1;O4y=0;
[T2,T5]=FIVEbarl(xtrace,ytrace);
if(max(T2)>180 | min(T5)<0)
    fprintf('size is too big');
    break;
end
    Ax=l2.*cosd(T2);
    Ay=l2.*sind(T2);
    Bx=l1+l5.*cosd(T5);
    By=l5.*sind(T5); 
    axis([-5 10 -5 10])
    A1=viscircles([0 0],l2); 
    B1=viscircles([l1 0],l5);
    q=length(xtrace);

  for i=1:q
    Ax1=l2*cosd(T2(i));
    Ay1=l2*sind(T2(i));
    Bx1=l1+l5*cosd(T5(i));
    By1=l5*sind(T5(i)); 
    Cx=xtrace(i);
    Cy=ytrace(i);
    link2=line([O2x Ax1],[O2y Ay1]);
    link3=line([Ax1 Cx],[Ay1 Cy]);
    link4=line([Cx Bx1],[Cy By1]);
    link5=line([Bx1 O4x],[By1 O4y]);
    O2=viscircles([0 0],0.1);
    A=viscircles([Ax1 Ay1],0.1);
    O4=viscircles([l1 0],0.1);
    B=viscircles([Bx1 By1],0.1);
    C=viscircles([Cx Cy],0.05);
    pause(0.01);
    delete(link2);
    delete(link3);
    delete(link4);
    delete(link5);
    delete(O2);
    delete(O4);
    delete(A);
    delete(B);
    %delete(C); 
  end