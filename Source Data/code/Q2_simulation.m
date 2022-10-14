hbar=1.05E-34;
e=1.6E-19;
B1=0.1
d=25E-9;
n0=7E15;

i=1000;

x1 = zeros(i,1);
y1 = zeros(i,1);
n1 = zeros(i,1);
R1 = zeros(i,1);
theta_R1 = zeros(i,1);
Rx1 = zeros(i,1);
Ry1 = zeros(i,1);

% initalize R, x, y - assuming 0 incident angle!
% j = 2 can be directly calculated:
R1(1,1)= hbar*sqrt(pi*n0)./(e*B1);
x1(2,1)= R1(1,1)-sqrt(R1(1,1)^2-(d/i)^2);
y1(2,1)= d/i;

% calculate x and y when j>3
for j=2:i
    n1(j,1)=n0*(i+1-j)/i;
    R1(j,1)=hbar*sqrt(pi*n1(j,1))./(e*B1);
    theta_R1(j,1) = atan((x1(j,1)-x1(j-1,1))/(d/i));
    Rx1(j,1) = x1(j,1)+R1(j,1)*cos(theta_R1(j,1));
    Ry1(j,1) = y1(j,1)-R1(j,1)*sin(theta_R1(j,1));
    y1(j+1,1)=d/i*j;
    x1(j+1,1)=Rx1(j,1)-sqrt(R1(j,1)^2-(y1(j+1,1)-Ry1(j,1))^2);
end

x_B1=x1;y_B1=y1;

% ===========================================
B2=0.3

x2 = zeros(i,1);
y2 = zeros(i,1);
n2 = zeros(i,1);
R2 = zeros(i,1);
theta_R2 = zeros(i,1);
Rx2 = zeros(i,1);
Ry2 = zeros(i,1);

% initalize R, x, y - assuming 0 incident angle!
% j = 2 can be directly calculated:
R2(1,1)= hbar*sqrt(pi*n0)./(e*B2);
x2(2,1)= R2(1,1)-sqrt(R2(1,1)^2-(d/i)^2);
y2(2,1)= d/i;

% calculate x and y when j>3
for j=2:i
    n2(j,1)=n0*(i+1-j)/i;
    R2(j,1)=hbar*sqrt(pi*n2(j,1))./(e*B2);
    theta_R2(j,1) = atan((x2(j,1)-x2(j-1,1))/(d/i));
    Rx2(j,1) = x2(j,1)+R2(j,1)*cos(theta_R2(j,1));
    Ry2(j,1) = y2(j,1)-R2(j,1)*sin(theta_R2(j,1));
    y2(j+1,1)=d/i*j;
    x2(j+1,1)=Rx2(j,1)-sqrt(R2(j,1)^2-(y2(j+1,1)-Ry2(j,1))^2);
end

x_B2=x2;y_B2=y2;

% ===========================================

hbar=1.05E-34;
e=1.6E-19;
B3=0.5
d=25E-9;
n0=7E15;

i=1000;

x1 = zeros(i,1);x_r = zeros(i,1);
y1 = zeros(i,1);y_r = zeros(i,1);
n1 = zeros(i,1);n_r = zeros(i,1);
R1 = zeros(i,1);R_r = zeros(i,1);
theta_R1= zeros(i,1);theta_R_r = zeros(i,1);
Rx1 = zeros(i,1);Rx_r = zeros(i,1);
Ry1 = zeros(i,1);Ry_r = zeros(i,1);

% initalize R, x, y - assuming 0 incident angle!
% j = 2 can be directly calculated:
R1(1,1)= hbar*sqrt(pi*n0)./(e*B3);
x1(2,1)= R1(1,1)-sqrt(R1(1,1)^2-(d/i)^2);
y1(2,1)= d/i;

% calculate x and y when j>3
for j=2:i
    n1(j,1)=n0*(i+1-j)/i;
    R1(j,1)=hbar*sqrt(pi*n1(j,1))./(e*B3);
    theta_R1(j,1) = atan((x1(j,1)-x1(j-1,1))/(d/i));
    Rx1(j,1) = x1(j,1)+R1(j,1)*cos(theta_R1(j,1));
    Ry1(j,1) = y1(j,1)-R1(j,1)*sin(theta_R1(j,1));
    y1(j+1,1)=d/i*j;
    x1(j+1,1)=Rx1(j,1)-sqrt(R1(j,1)^2-(y1(j+1,1)-Ry1(j,1))^2);
end

x_B3=x1;y_B3=y1;

R_r(1,1)= hbar*sqrt(pi*n0/i)./(e*B3);
x_r(1,1)=x1(i,1);x_r(2,1)=2*x1(i,1)-x1(i-1,1);
y_r(1,1)=y1(i,1);y_r(2,1)= y_r(1,1)-d/i;

% calculate x and y when j>3
for j=2:i
    n_r(j,1)=n0-n0*(i+1-j)/i;
    R_r(j,1)=hbar*sqrt(pi*n_r(j,1))./(e*B3);
    theta_R_r(j,1) = atan((x_r(j,1)-x_r(j-1,1))/(d/i));
    Rx_r(j,1) = x_r(j,1)-R_r(j,1)*cos(theta_R_r(j,1));
    Ry_r(j,1) = y_r(j,1)-R_r(j,1)*sin(theta_R_r(j,1));
    y_r(j+1,1)=y_r(j,1)-d/i;
    x_r(j+1,1)=Rx_r(j,1)+sqrt(R_r(j,1)^2-(y_r(j+1,1)-Ry_r(j,1))^2);
end

x_r_B3=x_r;y_r_B3=y_r;

% =====================================================

h2=figure();
h2.Position = [400 400 400 400];
LineWidth = 2;
LineColor_B1 = '[0 0.4470 0.7410]';
LineColor_B2 = 'k';
LineColor_B3 = '[0.6350 0.0780 0.1840]';
hold on
plot(x_B1*1E9, y_B1*1E9-25, 'Color',LineColor_B1,'Linewidth',LineWidth);
plot(x_B1*1E9, -(y_B1*1E9-25), 'Color',LineColor_B1,'Linewidth',LineWidth);
plot(-x_B1*1E9, y_B1*1E9-25, 'Color',LineColor_B1,'Linewidth',LineWidth);
plot(-x_B1*1E9, -(y_B1*1E9-25), 'Color',LineColor_B1,'Linewidth',LineWidth);

plot(x_B2*1E9, y_B2*1E9-25, 'Color',LineColor_B2,'Linewidth',LineWidth);
plot(x_B2*1E9, -(y_B2*1E9-25), 'Color',LineColor_B2,'Linewidth',LineWidth);
plot(-x_B2*1E9, y_B2*1E9-25, 'Color',LineColor_B2,'Linewidth',LineWidth);
plot(-x_B2*1E9, -(y_B2*1E9-25), 'Color',LineColor_B2,'Linewidth',LineWidth);

plot(x_B3*1E9, y_B3*1E9-25, 'Color',LineColor_B3,'Linewidth',LineWidth);
plot(x_r_B3*1E9, y_r_B3*1E9-25, 'Color',LineColor_B3,'Linewidth',LineWidth);

saveas(h2,'simulated_electron_trajectory_Q2_v3.jpg');

% plot(2*max(x_B2*1E9)-x_B2*1E9, y_B2*1E9-25, 'Color',[0.6350 0.0780 0.1840],'Linewidth',LineWidth);
