theta = 0:0.1:2*pi;
x = 8;
y = 8;
Radius = 5;
X = x + Radius*cos(theta);
Y = y + Radius*sin(theta);
plot(X, Y);
for theta = 0:0.1:2*pi    
    syms x2 y2
    X = x + Radius*cos(theta);
    Y = y + Radius*sin(theta);
    eqn1 = (x2 -X)^2+(y2-Y)^2 == 100;
    eqn2 = (x2)^2+(y2)^2 == 100;
    eqn = [eqn1 eqn2];
    var = [x2, y2];
    soln = solve(eqn, var);
    hold on
    x3=double(soln.x2(1));
    y3=double(soln.y2(1));
    x4=[0,x3,X];
    y4=[0,y3,Y];
    
    h=animatedline(x4,y4);
    pause(0.001)
    clearpoints(h)
end
hold off