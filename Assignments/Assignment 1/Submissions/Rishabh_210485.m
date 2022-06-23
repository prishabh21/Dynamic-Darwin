t=linspace(0,2*pi);
x=5*cos(t)+10;
y=5*sin(t)+10;
plot(x,y,"m")
hold on
% % 
l1=21;
l2=21;

for theta=linspace(0,2*pi)
    xo=5*cos(theta)+10;
    yo=5*sin(theta)+10;
    
    syms x3 y3 l1 l2;              
    eqn1= (x3-xo)^2+(y3-yo)^2 ==21^2 ;  
    eqn2= (x3)^2+(y3)^2 ==21^2 ;
    eqn=[eqn1 eqn2];
    roots=solve(eqn,x3,y3);
    
%   roots.x3
    hold on
    
    x4=double(roots.x3(2));
    y4=double(roots.y3(2));
    x1=[0,x4,xo];
    x2=[0,y4,yo];
%   plot(x1,x2,"o:")
    
    h=animatedline(x1,x2,'Color','r','LineWidth',3);
    pause(0.002)
    clearpoints(h)
    
end
hold off


