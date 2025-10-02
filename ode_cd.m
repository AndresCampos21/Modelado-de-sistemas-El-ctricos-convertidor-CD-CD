[t,x]=ode45(@din_cd,[0 0.01],[0 0]);

figure(1);
subplot(2,1,1)
plot(t,x(:,1), 'r', 'LineWidth', 1);
xlabel('tiempo');
ylabel('Corriente');
grid on

subplot(2,1,2)
plot(t, x(:,2), 'b', 'LineWidth', 1);
xlabel('tiempo');
ylabel('Voltaje');
grid on