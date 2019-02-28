function [T2,T5]=FIVEbarl(Cx,Cy)
global l1 l2 l3 l4 l5;

O2x=0;O2y=0;O4x=l1;O4y=0;
a1=Cy;b1=Cx;
c1=(l2^2-l3^2+Cx.^2+Cy.^2)/(2*l2);
if((a1.^2+b1.^2-c1.^2)<0)
    fprintf('this point is not reachable');
else
T2=2.*atand((a1+sqrt(a1.^2+b1.^2-c1.^2))./(b1+c1));
%T2(2)=2.*atand((a1-sqrt(a1.^2+b1.^2-c1.^2))./(b1+c1));
a2=Cy;b2=Cx-l1;
c2=(l1^2+l5^2-l4^2+Cx.^2+Cy.^2-2*Cx.*l1)/(2*l5);

%T51=2.*atand((a2+sqrt(a2.^2+b2.^2-c2.^2))/(b2+c2));
T5=2.*atand((a2-sqrt(a2.^2+b2.^2-c2.^2))./(b2+c2));


end

end