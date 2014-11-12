T_1 = 5000; %T_1 calculated from experiment
time_step = Xpure(2,1) - Xpure(1,1); %Time step between data points
x_peak = 10000; %Peak times known from experiment
y_peak = 10000;
z_peak = 30000;

x_point = x_peak/time_step;
y_point = y_peak/time_step;
z_point = z_peak/time_step;

x_low = x_point - T_1/(2*time_step);
x_high = x_point + T_1/(2*time_step);

y_low = y_point - T_1/(2*time_step);
y_high = y_point + T_1/(2*time_step);

z_low = z_point - T_1/(2*time_step);
z_high = z_point + T_1/(2*time_step);

Rx_xpure = sum(Xpure(x_low:x_high, 2));
Ry_xpure = sum(Xpure(y_low:y_high, 3));
Rz_xpure = sum(Xpure(z_low:z_high, 2));
norm_xpure = sqrt(Rx_xpure^2 + Ry_xpure^2 + Rz_xpure^2);
rho_xpure = [1/2+Rz_xpure/(2*norm_xpure), Rx_xpure/(2*norm_xpure)-1i*Ry_xpure/(2*norm_xpure); Rx_xpure/(2*norm_xpure)+1i*Ry_xpure/(2*norm_xpure), 1/2-Rz_xpure/(2*norm_xpure)]


