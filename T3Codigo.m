t = [0 20]; 
x0 = [0; 0; 0; 0]; 
z1 = @(t) 0.05 * sin(0.5 * pi * t);
z2 = @(t) 0.05 * sin(20 * pi * t);


[t, x] = ode45(@(t,x) sismasa(t,x,z1), t, x0);

figure;
subplot(2,1,1);
plot(t, x(:,1), 'b-', 'LineWidth', 2);
title('Posición de la carrocería (x₁)');
xlabel('Tiempo (s)');
ylabel('Posición (m)');
legend('x_1 (carrocería)');
grid on;

subplot(2,1,2);
plot(t, x(:,2), 'b-', 'LineWidth', 2);
title('Velocidad de la carrocería (ẋ₁)');
xlabel('Tiempo (s)');
ylabel('Velocidad (m/s)');
legend('ẋ_1 (carrocería)');
grid on;

figure;
subplot(2,1,1);
plot(t, x(:,3), 'r-', 'LineWidth', 2);
title('Posición de la rueda (x₂)');
xlabel('Tiempo (s)');
ylabel('Posición (m)');
legend('x_2 (rueda)');
grid on;

subplot(2,1,2);
plot(t, x(:,4), 'r-', 'LineWidth', 2);
title('Velocidad de la rueda (ẋ₂)');
xlabel('Tiempo (s)');
ylabel('Velocidad (m/s)');
legend('ẋ_2 (rueda)');
grid on;