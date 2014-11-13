function [ chi ] = process_matrix(0_data, 1_data, x_data, xminus_data, Xpure, Ypure, Zpure, T_1, x_peak, y_peak, z_peak)

a = density_matrix(0_data, Xpure, Ypure, Zpure, T_1, x_peak, y_peak, z_peak);
d = density_matrix(1_data, Xpure, Ypure, Zpure, T_1, x_peak, y_peak, z_peak);
b = density_matrix(x_data, Xpure, Ypure, Zpure, T_1, x_peak, y_peak, z_peak);
c = density_matrix(xminus_data, Xpure, Ypure, Zpure, T_1, x_peak, y_peak, z_peak);

rho = [a, b; c, d];

lambda = 0.5*[1,0,0,1;0,1,1,0;0,1,-1,0;1,0,0,-1];

chi = lambda*rho*lambda;
end

