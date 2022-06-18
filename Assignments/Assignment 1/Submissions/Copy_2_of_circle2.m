clear clc
  r=3;
   t=0:pi/24:2*pi;
  x=r*cos(t)+42;
  y=r*sin(t)+19;
   plot(x,y,x,y)
   hold on
   a1=3;
   a2=4;
   q2=cosh((x.^2+y.^2-a1.^2-a2.^2)/2*a1*a2);
   q1=tanh(y/x)+tanh(a2*sin(q2)/(a1+a2*cos(q2)));

plot([0,0],[a1*cos(q1),a1*sin(q1)],"-r");
hold on
q1=tanh(y/x)+tanh(a2*sin(q2)/(a1+a2*cos(q2)));
plot([a1*cos(q1),a1*sin(q1)],[x,y],"-b");
