function [rho] = density_matrix(Data, Xpure, Ypure, Zpure, T_1, x_peak, y_peak, z_peak)
time_step = Data(2,1) - Data(1,1);

x_point = x_peak/time_step;
y_point = y_peak/time_step;
z_point = z_peak/time_step;

x_low = x_point - T_1/(2*time_step);
x_high = x_point + T_1/(2*time_step);

y_low = y_point - T_1/(2*time_step);
y_high = y_point + T_1/(2*time_step);

z_low = z_point - T_1/(2*time_step);
z_high = z_point + T_1/(2*time_step);

Rx = sum(Data(x_low:x_high, 2));
Ry = sum(Data(y_low:y_high, 3));
Rz = sum(Data(z_low:z_high, 2));

r_x = Rx/(norm_finder(Xpure, T_1, x_peak, y_peak, z_peak));
r_y = Ry/(norm_finder(Ypure, T_1, x_peak, y_peak, z_peak));
r_z = Rz/(norm_finder(Zpure, T_1, x_peak, y_peak, z_peak));

%bar3(abs(density_matrix(Xdeco, Xpure, Ypure, Zpure, 5000, 10000, 10000, 30000)))

rho = [1/2+r_z/2, r_x/2-1i*r_y/2; r_x/2+1i*r_y/2, 1/2-r_z/2];
end

