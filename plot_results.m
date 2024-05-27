% Access the signals from out.logsout

theta = out.logsout.get('theta').Values.Data;
t_theta = out.logsout.get('theta').Values.Time;
tau = out.logsout.get('tau').Values.Data;
t_tau = out.logsout.get('tau').Values.Time;

% Create the first figure
figure;

% Subplot for theta
subplot(2, 1, 1);
plot(t_theta, theta, 'LineWidth', 2);
ylabel('\theta (deg)');
set(gca, 'FontSize', 12);
title('Angular position');
grid on;

% Subplot for current
subplot(2, 1, 2);
plot(t_tau, tau, 'LineWidth', 2);
ylabel('\tau (Nm)');
xlabel('Time (s)');
set(gca, 'FontSize', 12);
title('Torque');
grid on;