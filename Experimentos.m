%Code by Alexander Bernal; https://github.com/EcoKnight

clc; close all; clear;
t = 10:10:180;

% Experimento 1 Variación del Voltaje
corriente_1_1 = [0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.3, 0.3, 0.3, 0.2, 0.3, 0.3, 0.3, 0.3];
corriente_1_2 = [175.1, 176.5, 177.5, 178.9, 181.2, 182.5, 183.2, 183.9, 183.8, 183.5, 183.3, 182.5, 181.4, 180, 178.4, 176.6, 174.6, 172];
corriente_1_3 = [269, 260.3, 250.3, 238.3, 225.4, 218.1, 212.9, 208.5, 204, 198.8, 193.2, 187.9, 182, 176.6, 167.6, 163.3, 159.8, 157.3];

% Experimento 2 Variación de la Concentración Salina
corriente_2_1 = [269.2, 249, 235.9, 229.2, 226.5, 224.3, 224.1, 221.1, 221.4, 221.3, 219.4, 219.2, 219.6, 219.9, 219.9, 220.1, 219.9, 219.9];
corriente_2_2 = [321.1, 318.2, 317.3, 316.9, 316.7, 316.7, 316.5, 316.4, 316.3, 316.5, 316.6, 316.6, 316.7, 316.8, 316.7, 316.8, 316.6, 316.6];
corriente_2_3 = [367.1, 350.7, 342.6, 340.3, 337.6, 336.8, 335.8, 335.5, 335.3, 335.2, 335, 334.8, 334.3, 334, 333.5, 333.2, 332.7, 332.1];

% Experimento 3 Variación de la Temperatura
corriente_3_1 = [120.4, 118.1, 115.7, 115.2, 114.4, 113.9, 113.4, 113, 112.6, 112.2, 111.8, 111.4, 111, 110.7, 110.3, 110, 109.5, 109.2];
corriente_3_2 = [149.9, 146.7, 145, 142.4, 140.5, 138.4, 136.3, 133.8, 131.3, 129.4, 128, 126.5, 125.1, 124.2, 123.5, 123.2, 122.5, 121];
corriente_3_3 = [195, 192, 189.6, 187.2, 166.2, 162.4, 164.4, 162.9, 162, 160.7, 159.7, 158.9, 158.3, 157.6, 156.8, 155.9, 156.9, 155.8];

% Cálculo del promedio y desviación estándar
prom_1_1 = mean(corriente_1_1);
desv_1_1 = std(corriente_1_1);
prom_1_2 = mean(corriente_1_2);
desv_1_2 = std(corriente_1_2);
prom_1_3 = mean(corriente_1_3);
desv_1_3 = std(corriente_1_3);

prom_2_1 = mean(corriente_2_1);
desv_2_1 = std(corriente_2_1);
prom_2_2 = mean(corriente_2_2);
desv_2_2 = std(corriente_2_2);
prom_2_3 = mean(corriente_2_3);
desv_2_3 = std(corriente_2_3);

prom_3_1 = mean(corriente_3_1);
desv_3_1 = std(corriente_3_1);
prom_3_2 = mean(corriente_3_2);
desv_3_2 = std(corriente_3_2);
prom_3_3 = mean(corriente_3_3);
desv_3_3 = std(corriente_3_3);

% Gráficas del Experimento 1
figure('Name', 'Los laplacianos');
subplot(3,1,1);
plot(t, corriente_1_1, '-*m','LineWidth',2);
grid on
ylim([0.1,0.35]);
title('Experimento 1    a)Voltaje 1.5V');
xlabel('Tiempo (s)');
ylabel('Corriente (mA)');

subplot(3,1,2);
plot(t, corriente_1_2, '-*m','LineWidth',2);
grid on
title('b) Voltaje 3.5V');
xlabel('Tiempo (s)');
ylabel('Corriente (mA)');

subplot(3,1,3);
plot(t, corriente_1_3, '-*m','LineWidth',2);
grid on
title('c) Voltaje 5.0V');
xlabel('Tiempo (s)');
ylabel('Corriente (mA)');

% Gráficas del Experimento 2
figure('Name', 'Los laplacianos');
subplot(3,1,1);
plot(t, corriente_2_1, '-*r','LineWidth',2);
grid on
title('Experimento 2.   a) 1 Cucharada Sal');
xlabel('Tiempo (s)');
ylabel('Corriente (mA)');

subplot(3,1,2);
plot(t, corriente_2_2, '-*r','LineWidth',2);
grid on
title('b) 2 Cucharadas Sal');
xlabel('Tiempo (s)');
ylabel('Corriente (mA)');

subplot(3,1,3);
plot(t, corriente_2_3, '-*r','LineWidth',2);
grid on
title('c) 3 Cucharadas Sal');
xlabel('Tiempo (s)');
ylabel('Corriente (mA)');

% Gráficas del Experimento 3
figure('Name', 'Los laplacianos');
subplot(3,1,1);
plot(t, corriente_3_1, '-*','LineWidth',2);
grid on
title('Experimento 3.  a) Temperatura 30°C');
xlabel('Tiempo (s)');
ylabel('Corriente (mA)');

subplot(3,1,2);
plot(t, corriente_3_2, '-*','LineWidth',2);
grid on
title('b) Temperatura 40°C');
xlabel('Tiempo (s)');
ylabel('Corriente (mA)');

subplot(3,1,3);
plot(t, corriente_3_3, '-*','LineWidth',2);
grid on
title('c) Temperatura 50°C');
xlabel('Tiempo (s)');
ylabel('Corriente (mA)');
