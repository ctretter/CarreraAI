clear all; close all;

StartPoint = [0 0];
BowRange = 7.3304;
IADegree = 70;
InputAngle = IADegree*pi/180;
OutputAngle = 160*pi/180;


Radius = BowRange/abs((OutputAngle-InputAngle));
EndPointX = StartPoint(1) + Radius*(sin(OutputAngle)-sin(InputAngle));
EndPointY = StartPoint(2) + Radius*(cos(InputAngle)-cos(OutputAngle));

CenterPointX = StartPoint(1) + Radius*cos(InputAngle+pi/2);
CenterPointY = StartPoint(2) + Radius*sin(InputAngle+pi/2);

t = 0:0.01:2*pi;

xVal = CenterPointX + Radius*cos(t);
yVal = CenterPointY + Radius*sin(t);

t1 = 0:0.01:Radius;

Xline1 = linspace(CenterPointX,StartPoint(1),length(t1));
Yline1 = linspace(CenterPointY,StartPoint(2),length(Xline1));

Xline2 = linspace(CenterPointX,EndPointX,length(t1));
Yline2 = linspace(CenterPointY,EndPointY,length(t1));

Xline3 = linspace(StartPoint(1),EndPointX,length(t1));
Yline3 = linspace(StartPoint(2),EndPointY,length(t1));

%t2 = ((abs(90-IADegree)/360)/abs(OutputAngle-InputAngle)):0.01:abs(OutputAngle-InputAngle);
%xunit = Radius * cos(t2) + CenterPointX;
%yunit = Radius * sin(t2) + CenterPointY;

figure;
hold on;
plot(xVal,yVal);
plot(Xline1,Yline1, 'g');
plot(Xline2,Yline2, 'g');
plot(Xline3,Yline3, 'r');
plot(EndPointX,EndPointY,'mo')
plot(StartPoint(1),StartPoint(2),'ko');
%plot(xunit,yunit,'m');
hold off;

