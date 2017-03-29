

SHIFT = 3;

TrackPattern_y = [0,1,2,3,4,5,6,5,4,3,1,2,1,0,-1,-2,-3,-2,-1,0];
n_pattern = length(TrackPattern_y);
TrackPattern_z = linspace(0,n_pattern*2,n_pattern);

%History_y =      [6,5,4,2,3,2,1,0,0,0,1,2,2,4];
History_y = [2,1,0,-1,-2,-3,-2,-1,0,0,1,2,3,4,5,6,5,4,3,1];
n_history = length(History_y);

%% one iteration
%z_est = 5;
z_est = 8;

%%find the pattern index to the est. distance
idx_est = find(TrackPattern_z>z_est,1);

%%history average
mean_history = mean(History_y);
idx_searchStart = (idx_est - SHIFT - n_history)+n_pattern;


%now autocorrelate

max_sum = 0;
max_idx = -1;
pos_routeCorrelate = idx_searchStart;
Track_xcorr = zeros(1,n_pattern);
for s = 0:2*SHIFT-1
    %% route average calculation
    routeAverage = 0;
    idx_routeAverageStart = pos_routeCorrelate;
    idx_routeAverageEnd = rem(idx_routeAverageStart+n_history,n_pattern+1);
    if idx_routeAverageStart > idx_routeAverageEnd
      swap = idx_routeAverageStart;
      idx_routeAverageStart = idx_routeAverageEnd;
      idx_routeAverageEnd = swap;
    end;
    %routeAverage = sum(TrackPattern_y(idx_routeAverageStart:idx_routeAverageEnd))/n_pattern;
    
    %%correlation!
    sum = 0;
    pos_routeXcor = pos_routeCorrelate;
    for pos_HistoryCorr = 1:n_history
      sum = sum + (History_y(pos_HistoryCorr) - mean_history)*(TrackPattern_y(pos_routeXcor)-routeAverage);
      pos_routeXcor = pos_routeXcor + 1;
      if pos_routeXcor > n_pattern
        pos_routeXcor = 1;
      end;
      %pos_routeXcor = rem(pos_routeXcor, n_pattern+1)+1
    end;
    Track_xcorr(pos_routeCorrelate) = sum;
    if sum > max_sum
      max_sum = sum;
      max_idx = pos_routeXcor;
    end
    
    pos_routeCorrelate = rem(pos_routeCorrelate, n_pattern+1)+1;
end;

figure(1);
subplot(3,1,1);
stem(TrackPattern_z, TrackPattern_y);
title("YAW");
subplot(3,1,2);
stem(TrackPattern_z, History_y);
title("HIST");
subplot(3,1,3);

xc = xcorr(TrackPattern_y,History_y)
xc2 = xc(1:2:end);
pos_cor = find(xc2==max(xc2),1);

figure(2);
subplot(3,1,1);
title("TRACK");
stem(TrackPattern_y, "r-");
hold on;
stem(pos_cor, TrackPattern_y(pos_cor), "g-x");
subplot(3,1,3);
stem(History_y, "r-");
title("HIST");
subplot(3,1,2);
stem(xc, "r-");
title("CORR");

