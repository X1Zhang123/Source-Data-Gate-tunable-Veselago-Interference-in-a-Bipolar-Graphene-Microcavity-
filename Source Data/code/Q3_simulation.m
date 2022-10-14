theta_1 = 1/180*pi; % incident angle
% d_0 = 50; % Cavity width unit nm
d_1 = 40;
d_2 = 10;
 

% a = 2/(d*sin(theta_1).^2);
% b = d*sqrt(sin(theta_1).^2-sin(theta_1).^4);

a = -1/(d_1*sin(theta_1).^2);
b = -2*d_1*sqrt(sin(theta_1).^2*(1-sin(theta_1).^2));


x1 = linspace(-b, 0, 100);
y1 = a/4*(x1+b).^2+1/a;
 

x2 = linspace(-b, -b/2, 100);
y2 = -a/4*(x2+b).^2-1/a;
 

x3 = linspace(-b/2, b/2, 100);
y3 = -a/4*(x3).^2-1/a;
 

x4 = linspace(b/2, b, 100);
y4 = -a/4*(x4-b).^2-1/a;
 

x5 = linspace(0, b, 100);
y5 = +a/4*(x5-b).^2+1/a;
 

h1=figure();
h1.Position = [400 400 400 400];
LineWidth = 2;
LineColor = 'k';
% plot(x1, y1, 'Color',[0 0.4470 0.7410],'Linewidth',LineWidth);
hold on
% plot(x2, y2, 'Color',[0.6350 0.0780 0.1840],'Linewidth',LineWidth);
plot(x1, y1+15, LineColor,'Linewidth',LineWidth);
plot(x2, y2+15, LineColor,'Linewidth',LineWidth);
plot(x3, y3+15, LineColor,'Linewidth',LineWidth);
plot(x4, y4+15, LineColor,'Linewidth',LineWidth);
plot(x5, y5+15, LineColor,'Linewidth',LineWidth);
ylim([-25 25])
saveas(h1,'simulated_electron_trajectory_Q3.jpg');