function view_trajectory(handle, pattern, dist_est, dist_corr)
    %newplot(handle);
    
    %subplot(3,2,1);
    figure(1);
    refresh();
    title("TRACK");
    plot(pattern(:,1), pattern(:,2), "b-");
    axis tight;
    hold on;
    plot([dist_est dist_est], [min(pattern(:,2)) max(pattern(:,2))], "r-");
    plot([dist_corr dist_corr], [min(pattern(:,2)) max(pattern(:,2))], "g-");
    hold off;
end