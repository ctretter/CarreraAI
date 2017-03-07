#uncomment to load the data gathered
#funnel; #data

#now basic trigonometry
yaw = atan2(y,x);
magr = [];
magdt = 0;
for i = 1 : length(mag)
  magdt = magdt + sqrt(dx(i)^2+dy(i)^2);
  magr = [magr magdt];
end

figure(1);
subplot(4,2,1);
plot(t,x);
title("dx · dt");
subplot(4,2,3);
plot(t,y);
title("dy · dt");
subplot(4,2,5);
plot(t,yaw);
title("''''''yaw'''''' [atan2(y/x)]");
subplot(4,2,7);
plot(t,magr);
title("|q⃗| · dt");
subplot(4,2,[2 4 6,8]);
plot(x,y);
title("xy plot");