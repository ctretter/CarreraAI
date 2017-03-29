% playback data
datapath = "../../../../Data/2016-10-25/";
%trackpattern_file = "round1.1.csv";
%trackplayback_files = {"round1.2.csv" "round1.3.csv"};

trackpattern_file = "round7.2.csv";
%trackplayback_files = {"round7.3.csv" "round7.4.csv" "round7.5.csv"};
trackplayback_files = {"round7.3.csv"};

% file format
col_t = 1; col_d = 2; col_dc = 5; col_y = 4;

TrackPattern_table = dlmread([datapath trackpattern_file], ";");

% read out yaw and position of pattern, and beginning of timekeeping
TrackPattern_y = TrackPattern_table(:,col_y);
TrackPattern_d = TrackPattern_table(:,col_d);
TrackPattern = [TrackPattern_d TrackPattern_y];
TrackPattern_n = length(TrackPattern_table);
time = TrackPattern_table(:,col_t);


% read out sensor and distance playback
Playback_y = [];
Playback_d = [];
Playback_dc = [];
Playback_t = [];
for i = trackplayback_files
  Playback_table = dlmread([datapath i{:}], ";");
  
  %append to time
  Playback_t = cat(1,Playback_t,Playback_table(2:end,col_t));
  %append to playback
  %Playback_y = [Playback_y ; Playback_table(:,col_y)];
  %Playback_d = [Playback_d ; Playback_table(:,col_d)];
  Playback_y = cat(1,Playback_y,Playback_table(2:end,col_y));
  Playback_d = cat(1,Playback_d,Playback_table(2:end,col_d));
  Playback_dc = cat(1,Playback_dc,Playback_table(2:end,col_dc));
end
Playback_n = length(Playback_d);
time = [time ; Playback_t];
%Playback_t = Playback_t(2:end);
Playback_tn = Playback_t.-Playback_t(1);
Playback_y = Playback_y(2:end);
Playback_d = Playback_d(2:end);
