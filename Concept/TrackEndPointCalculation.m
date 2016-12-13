clear all; close all;

StartPoint = [0 0];
BowRange = 7.3304;
InputAngle = 80*pi/180;
OutputAngle = 160*pi/180;


Radius = BowRange/abs((OutputAngle-InputAngle))
EndPointX = StartPoint(1) + Radius*(sin(OutputAngle)-sin(InputAngle))
EndPointY = StartPoint(2) + Radius*(cos(InputAngle)-cos(OutputAngle))

CenterPointX = StartPoint(1) + Radius*cos(InputAngle+pi/2);
CenterPointY = StartPoint(2) + Radius*sin(InputAngle+pi/2);

t = 0:0.01:2*pi;

xVal = CenterPointX + Radius*cos(t);
yVal = CenterPointY + Radius*sin(t);

t1 = CenterPointX:0.01:0;

Xline1 = linspace(CenterPointX,StartPoint(1),length(t1));
Yline1 = linspace(CenterPointY,StartPoint(2),length(Xline1));

Xline2 = linspace(CenterPointX,EndPointX,length(t1));
Yline2 = linspace(CenterPointY,EndPointY,length(t1));

figure;
hold on;
plot(xVal,yVal);
plot(Xline1,Yline1);
plot(Xline2,Yline2);
hold off;

