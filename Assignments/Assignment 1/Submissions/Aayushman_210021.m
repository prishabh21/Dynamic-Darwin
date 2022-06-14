x=0;
y=0;
r=5;
th = 0:pi/100:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
plot(xunit, yunit);
for th=0:pi/100:2*pi
    xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
syms p q;    
eq1=(p-10)^2+(q-10)^2==21*21;
    eq2=(p-xunit)^2+(q-yunit)^2==21*21;
    a=[eq1, eq2];
    b=[p, q];
    S=solve(a,b);
    hold on
    i=double(S.p(2));
    j=double(S.q(2));
    g=[10,i,xunit];
    h=[10,j,yunit];
    u=animatedline(g,h);
    pause(0.001)
    clearpoints(u)
   
    
end
hold off
    