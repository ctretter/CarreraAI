clear all;

Playback_table = dlmread("./crash_cut.csv", ",");

#separate out data, because I was lazy
#thankfully, USB is providing equidistant measurements by design (sort of?)
#so, we can define a delta_t at 44us
dt = 0.0000044;


#anyway, lets iterate everything and funnel it into their respective vectors
dx = [];
dy = [];

x  = [];
y  = [];
t  = [];

#the type enum for x should be 0 and y would be 1
#not that it matters really
type_dx = 0;
type_dy = 1;
#all counts for deltas are under the code 2
code_dd = 2;

#we need to know the last timestamp processed to know when there
#is a new dataset
last_t = Playback_table(1,1);
last_dx = 0;
last_dy = 0;
tdt = 0;
xdt = 0;
ydt = 0;
for i = 1:length(Playback_table)
  # when the timestamp deviates now,
  # it is time to push
  if last_t != Playback_table(i,1)
    dx = [dx last_dx];
    dy = [dy last_dy];
    x  = [x xdt];
    y  = [y ydt];
    t  = [t tdt];
  
    #update last processed timestamp
    #and clear dx and dy waiting to be pushed
    last_t = last_t;
    last_dx = 0;
    last_dy = 0;
     # cumulate time and position
    tdt = tdt + dt;
    xdt = xdt + dx(end);
    ydt = ydt + dy(end);
  end

  #filter by above specs
  if Playback_table(i,2) == code_dd
    #filter by type
    if Playback_table(i,3) == type_dx
      last_dx = Playback_table(i,4);
    elseif Playback_table(i,3) == type_dy
      last_dy = Playback_table(i,4);
    end
  end
end


#save all that for good measure
dlmwrite('./analyzed.csv', [t;x;y;dx;dy]', ",");