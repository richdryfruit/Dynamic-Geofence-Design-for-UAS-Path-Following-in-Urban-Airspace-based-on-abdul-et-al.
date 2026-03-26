% Quadrotor Physical Parameters
m = 2.0; % Mass (kg)
g = 9.8; % Gravity (m/s^2)
I_phi = 0.048; % Roll inertia (kg*m^2)
I_theta = 0.048; % Pitch inertia (kg*m^2)
I_psi = 0.096; % Yaw inertia (kg*m^2)
I = diag([I_phi, I_theta, I_psi]); % Inertia matrix