f = 3e9;       %3Ghz
h = 1.6e-3;    %1.6 mm substrate
e_r = 4.4;      %Relative permittivity for FR4_epoxy

c=3e8;
W = c*sqrt(2/(e_r+1))/(2*f);
e_reff = (e_r+1)/2 + (e_r-1)*((1+(12*h/W))^(-0.5))/2;
L_eff = c/(2*f*sqrt(e_reff));
del_L = 0.412*h*(e_reff+0.3)*(W/h+0.264)/((e_reff-0.258)*(W/h+0.8));
L = L_eff-2*del_L;

h_d = 0.0606*c/(f*sqrt(e_r));
Lg = L+(6*(h_d));
Wg = W+(6*(h_d));

L_f = c/(f*4*sqrt(e_reff));

