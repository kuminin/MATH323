% This script will graph a smily face.

% plot the face
theta = 0:0.01:2*pi;
x = cos(theta);
y = sin(theta);
plot (x, y)
axis square
hold on

% plot the right eye
x = 0.1 * cos(theta) + 0.35;
y = 0.1 * sin(theta) + 0.2;
plot (x, y)
hold on

% plot the left eye
x = 0.1 * cos(theta) - 0.35;
y = 0.1 * sin(theta) + 0.2;
plot (x,y)
hold on

% plot the lips
theta = 0:0.01:pi;
x = 0.5 * cos(theta);
y = 0.5 * sin(theta) - 0.5;
plot(x,y)