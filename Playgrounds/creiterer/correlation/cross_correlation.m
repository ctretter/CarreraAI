clear all;
close all;

f = [1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0];
g = [0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0];
result = [0:31];
%mf = mg = 5/16;
mf = mg = 0;

for n = 0:31

    s = 0;
    for m = 1:16
      if ((m + n) <= length(f))
        s = s + (f(m) - mf) * (g(m+n) - mg);
      else
        s = s + (f(m) - mf) * (0 - mg);
      endif
    endfor
    result(n+1) = s;
    fprintf('Value at lag %d = %d\n', n, result(n+1));
    
    if (mod(n, 16) == 0)
        figure;
        hold on;
    end
    subplot(4, 4, mod(n, 16)+1);
    hold on;
    ylim([0 3.5]);
    title(sprintf('lag n = %d', n))
    plot([0:length(f)-1], f, 'g', 'LineWidth', 2, 'DisplayName', 'f[m]');
    gShifted = shiftRowVector(g, -n);
    plot([0:length(g)-1], gShifted, 'b', 'LineWidth', 2, 'DisplayName', 'g[m+n]');
    plot([0:length(g)-1], f .* gShifted, 'c', 'LineWidth', 2, 'DisplayName', 'f[m] \cdot g[m+n]');
    
    for j = 1:n
        stem(j-1, result(j), 'r', 'filled', 'LineWidth', 1, 'MarkerSize', 5);
    endfor
    plot(n, result(n+1), 'xr', 'LineWidth', 2, 'MarkerSize', 10, 'DisplayName', '\Sigma_{m} f[m] \cdot g[m+n]');
    plot([0:n], result(1:n+1), 'r');
    
    if (mod(n, 16) == 0)
        lgd = legend('show');
        set(lgd, 'Position', [0.0, 0.90, 0.12, 0.10]);
    end
      
endfor

% scaling amplitude to 1
result = result / max(result);

figure;
hold on;
title('Result of the cross-correlation');
plot([0:length(f)-1], f, 'g', 'LineWidth', 2, 'DisplayName', 'f[m]');
plot([0:length(g)-1], g, 'b', 'LineWidth', 2, 'DisplayName', 'g[m]');
plot([0:length(result)-1], result, 'r', 'LineWidth', 2, 'DisplayName', '\phi_{fg}[n]');
xbounds = xlim();
set(gca, 'xtick', xbounds(1):1:xbounds(2));
lgd2 = legend('show');
%set(lgd2,'Interpreter','latex');

%r = xcorr(f, g);
%r = r / max(r);
%plot([0:length(r)-1], r, 'r');
