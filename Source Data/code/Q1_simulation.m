theta_1 = 1/180*pi; % incident angle
theta_2 = 2/180*pi; % incident angle
theta_3 = 3/180*pi; % incident angle
theta_4 = 4/180*pi; % incident angle
theta_5 = 5/180*pi; % incident angle
d_1 = 25; % d_0 = 50; % Cavity width unit nm


a = -1/(d_1*sin(theta_1).^2);
b = -2*d_1*sqrt(sin(theta_1).^2*(1-sin(theta_1).^2));
x1_1 = linspace(-b, 0, 100); y1_1 = a/4*(x1_1+b).^2+1/a;
x2_1 = linspace(-b, 0, 100); y2_1 = -a/4*(x2_1+b).^2-1/a;
x3_1 = linspace(0, b, 100);  y3_1 = -a/4*(x3_1-b).^2-1/a;
x4_1 = linspace(0, b, 100);  y4_1= +a/4*(x4_1-b).^2+1/a;

a = -1/(d_1*sin(theta_2).^2);
b = -2*d_1*sqrt(sin(theta_2).^2*(1-sin(theta_2).^2));
x1_2 = linspace(-b, 0, 100); y1_2 = a/4*(x1_2+b).^2+1/a;
x2_2 = linspace(-b, 0, 100); y2_2 = -a/4*(x2_2+b).^2-1/a;
x3_2 = linspace(0, b, 100);  y3_2 = -a/4*(x3_2-b).^2-1/a;
x4_2 = linspace(0, b, 100);  y4_2= +a/4*(x4_2-b).^2+1/a;

a = -1/(d_1*sin(theta_3).^2);
b = -2*d_1*sqrt(sin(theta_3).^2*(1-sin(theta_3).^2));
x1_3 = linspace(-b, 0, 100); y1_3 = a/4*(x1_3+b).^2+1/a;
x2_3 = linspace(-b, 0, 100); y2_3 = -a/4*(x2_3+b).^2-1/a;
x3_3 = linspace(0, b, 100);  y3_3 = -a/4*(x3_3-b).^2-1/a;
x4_3 = linspace(0, b, 100);  y4_3= +a/4*(x4_3-b).^2+1/a;

a = -1/(d_1*sin(theta_4).^2);
b = -2*d_1*sqrt(sin(theta_4).^2*(1-sin(theta_4).^2));
x1_4 = linspace(-b, 0, 100); y1_4 = a/4*(x1_4+b).^2+1/a;
x2_4 = linspace(-b, 0, 100); y2_4 = -a/4*(x2_4+b).^2-1/a;
x3_4 = linspace(0, b, 100);  y3_4 = -a/4*(x3_4-b).^2-1/a;
x4_4 = linspace(0, b, 100);  y4_4= +a/4*(x4_4-b).^2+1/a;

a = -1/(d_1*sin(theta_5).^2);
b = -2*d_1*sqrt(sin(theta_5).^2*(1-sin(theta_5).^2));
x1_5 = linspace(-b, 0, 100); y1_5 = a/4*(x1_5+b).^2+1/a;
x2_5 = linspace(-b, 0, 100); y2_5 = -a/4*(x2_5+b).^2-1/a;
x3_5 = linspace(0, b, 100);  y3_5 = -a/4*(x3_5-b).^2-1/a;
x4_5 = linspace(0, b, 100);  y4_5= +a/4*(x4_5-b).^2+1/a;

h1=figure();
h1.Position = [400 400 400 400];
LineWidth = 2;
LineColor = [0.6350 0.0780 0.1840];
hold on
plot(x1_1, y1_1, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x2_1, y2_1, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x3_1, y3_1, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x4_1, y4_1, 'Color',LineColor, 'Linewidth',LineWidth);
LineColor = [0.8500 0.3250 0.0980];
plot(x1_2, y1_2, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x2_2, y2_2, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x3_2, y3_2, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x4_2, y4_2, 'Color',LineColor, 'Linewidth',LineWidth);
LineColor = [0.9290 0.6940 0.1250];
plot(x1_3, y1_3, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x2_3, y2_3, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x3_3, y3_3, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x4_3, y4_3, 'Color',LineColor, 'Linewidth',LineWidth);
LineColor = [0.4660 0.6740 0.1880];
plot(x1_4, y1_4, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x2_4, y2_4, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x3_4, y3_4, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x4_4, y4_4, 'Color',LineColor, 'Linewidth',LineWidth);
LineColor = [0 0.4470 0.7410];
plot(x1_5, y1_5, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x2_5, y2_5, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x3_5, y3_5, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x4_5, y4_5, 'Color',LineColor, 'Linewidth',LineWidth);
saveas(h1,'simulated_electron_trajectory_Q1.jpg');


h2=figure();
h2.Position = [400 400 400 400];
LineWidth = 2;
LineColor = 'k';
hold on
plot(x1_5, y1_5, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x2_5, y2_5, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x3_5, y3_5, 'Color',LineColor, 'Linewidth',LineWidth);
plot(x4_5, y4_5, 'Color',LineColor, 'Linewidth',LineWidth);
ylim([-25 25])
saveas(h2,'simulated_electron_trajectory_Q3_first_order.jpg');