T_1 = 5000; %T_1 calculated from experiment
x_peak = 10000; %Peak times known from experiment
y_peak = 10000;
z_peak = 30000;





z_low = z_point - T_1/(2*time_step);
z_high = z_point + T_1/(2*time_step);

Rx_xpure = sum(Xpure(x_low:x_high, 2));
Ry_xpure = sum(Xpure(y_low:y_high, 3));
Rz_xpure = sum(Xpure(z_low:z_high, 2));
norm_xpure = sqrt(Rx_xpure^2 + Ry_xpure^2 + Rz_xpure^2);


Rx_ypure = sum(Ypure(x_low:x_high, 2));
Ry_ypure = sum(Ypure(y_low:y_high, 3));
Rz_ypure = sum(Ypure(z_low:z_high, 2));
norm_ypure = sqrt(Rx_ypure^2 + Ry_ypure^2 + Rz_ypure^2);
rho_ypure = [1/2+Rz_ypure/(2*norm_ypure), Rx_ypure/(2*norm_ypure)-1i*Ry_ypure/(2*norm_ypure); Rx_ypure/(2*norm_ypure)+1i*Ry_ypure/(2*norm_ypure), 1/2-Rz_ypure/(2*norm_ypure)]

Rx_zpure = sum(Zpure(x_low:x_high, 2));
Ry_zpure = sum(Zpure(y_low:y_high, 3));
Rz_zpure = sum(Zpure(z_low:z_high, 2));
norm_zpure = sqrt(Rx_zpure^2 + Ry_zpure^2 + Rz_zpure^2);
rho_zpure = [1/2+Rz_zpure/(2*norm_zpure), Rx_zpure/(2*norm_zpure)-1i*Ry_zpure/(2*norm_zpure); Rx_zpure/(2*norm_zpure)+1i*Ry_zpure/(2*norm_zpure), 1/2-Rz_zpure/(2*norm_zpure)]

Rx_xdeco = sum(Xdeco(x_low:x_high, 2));
Ry_xdeco = sum(Xdeco(y_low:y_high, 3));
Rz_xdeco = sum(Xdeco(z_low:z_high, 2));
norm_xdeco = sqrt(Rx_xdeco^2 + Ry_xdeco^2 + Rz_xdeco^2);
rho_xdeco = [1/2+Rz_xdeco/(2*norm_xdeco), Rx_xdeco/(2*norm_xdeco)-1i*Ry_xdeco/(2*norm_xdeco); Rx_xdeco/(2*norm_xdeco)+1i*Ry_xdeco/(2*norm_xdeco), 1/2-Rz_xdeco/(2*norm_xdeco)]