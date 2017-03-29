clc; clear all; shg;

% playback data
datapath = "../../../../Data/2016-10-25/";
%trackpattern_file = "round1.1.csv";
%trackplayback_files = {"round1.2.csv" "round1.3.csv"};

trackpattern_file = "round7.2.csv";
trackplayback_files = {"round7.3.csv" "round7.4.csv" "round7.5.csv"};

load_playback;

History_n = 300;
History_y = TrackPattern_y(end-History_n:end);

xmap = [1, 2, 2, 3, 3, 2, 2, 1];
ymap = [1, 2, 1, 0,-1,-2,-1, 0];

Playback_idx = 1;
distance_est = 500;
distance_xcorr = 0;

Live_fig = figure(1);

%subplot(3,2,3);
%stem(History_y, "r-");
%title("HIST");
%subplot(3,2,5);
%stem(xc, "r-");
%title("CORR");
%subplot(3,2,[2 4 6]);
%plot(xmap, ymap);

%if false
dtupdate = 0;
framerate = 25;
for i=1:History_n 
  Playback_idx = i;
  
  distance_est = rem(Playback_d(i), TrackPattern_d(end));
  dist_corr = Playback_dc(i);
  
  %% redraw here
  if dtupdate > 1/framerate 
    view_trajectory(Live_fig, TrackPattern, distance_est, dist_corr);
    usleep(dtupdate*1000);
    dtupdate = 0;
  end
  
  %% update values here
  History_y = shift(History_y,-1);
  
  % real time playback??
  dt = Playback_tn(rem(i+1, Playback_n))-Playback_tn(i);
  dtupdate = dtupdate + dt;
  %printf("Sleep %fs\n", dt);
  
 
end
