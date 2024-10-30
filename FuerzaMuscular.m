clc; close all; clear;

% Datos de tiempos (en segundos) para cada persona en cada ejercicio
% Jesus Alexander
planchaJ = [90, 140, 150, 89, 145];
lagartijaJ = [64, 85, 78, 103, 80];
plancha_boca_arribaJ = [120, 100, 88, 58, 80];
semiplancha_boca_arribaJ = [15, 26, 15, 10, 25];
brazos_0J = [168, 190, 120, 45, 80];
brazos_45J = [108, 102, 42, 75, 56];

% Karla Michelle
planchaK = [126, 155, 130, 120, 92];
lagartijaK = [94, 130, 114, 103, 60];
plancha_boca_arribaK = [108, 113, 84, 91, 58];
semiplancha_boca_arribaK = [12, 32, 27, 10, 6];
brazos_0K = [139, 125, 115, 89, 72];
brazos_45K = [96, 81, 63, 54, 87];

% Erick
planchaE = [85, 136, 89, 70, 92];
lagartijaE = [120, 154, 100, 87, 78];
plancha_boca_arribaE = [120, 98, 84, 91, 68];
semiplancha_boca_arribaE = [20, 32, 31, 12, 6];
brazos_0E = [180, 115, 110, 70, 72];
brazos_45E = [84, 81, 45, 65, 45];

% Nombres de los ejercicios
ejercicios = {'Plancha', 'Lagartija', 'Plancha Boca Arriba', ...
              'Semi Plancha Boca Arriba', 'Brazos 0°', 'Brazos 45°'};

% Crear matriz de datos para cada persona
datosJ = [planchaJ; lagartijaJ; plancha_boca_arribaJ; ...
          semiplancha_boca_arribaJ; brazos_0J; brazos_45J];

datosK = [planchaK; lagartijaK; plancha_boca_arribaK; ...
          semiplancha_boca_arribaK; brazos_0K; brazos_45K];

datosE = [planchaE; lagartijaE; plancha_boca_arribaE; ...
          semiplancha_boca_arribaE; brazos_0E; brazos_45E];

% Promedio general y desviación estándar para cada ejercicio
promediosGlobales = mean([datosJ, datosK, datosE], 2);
desviacionesGlobales = std([datosJ, datosK, datosE], 0, 2);

% Crear gráfico de barras con el promedio general y las desviaciones de cada persona
figure;
hold on;

% Graficar los promedios globales
bar(promediosGlobales, 'FaceColor', [0.3 0.3 0.8]); % Barra azul para el promedio
errorbar(1:6, promediosGlobales, desviacionesGlobales, 'k.', 'LineWidth', 1.5); % Barras de error

% Graficar los datos individuales de cada participante
plot(1:6, mean(datosJ, 2), 'bo--', 'MarkerSize', 8, 'LineWidth', 1.5); % Alexander en azul
plot(1:6, mean(datosK, 2), 'go--', 'MarkerSize', 8, 'LineWidth', 1.5); % Karla en verde
plot(1:6, mean(datosE, 2), 'mo--', 'MarkerSize', 8, 'LineWidth', 1.5); % Erick en magenta

% Personalización del gráfico
xticks(1:6);
xticklabels(ejercicios);
xlabel('Ejercicio');
ylabel('Tiempo (s)');
title('Promedio Global y Rendimiento de Cada Participante por Ejercicio');
legend('Promedio Global', 'Desviación Estándar', 'Alexander', 'Karla', 'Erick', 'Location', 'NorthWest');
grid on;
hold off;

% Agrupación de datos para cada ejercicio en una matriz
plancha = [planchaJ, planchaK, planchaE];
lagartija = [lagartijaJ, lagartijaK, lagartijaE];
plancha_boca_arriba = [plancha_boca_arribaJ, plancha_boca_arribaK, plancha_boca_arribaE];
semiplancha_boca_arriba = [semiplancha_boca_arribaJ, semiplancha_boca_arribaK, semiplancha_boca_arribaE];
brazos_0 = [brazos_0J, brazos_0K, brazos_0E];
brazos_45 = [brazos_45J, brazos_45K, brazos_45E];


% Crear matriz de datos para cada persona
datosJ = [planchaJ; lagartijaJ; plancha_boca_arribaJ; ...
          semiplancha_boca_arribaJ; brazos_0J; brazos_45J];

datosK = [planchaK; lagartijaK; plancha_boca_arribaK; ...
          semiplancha_boca_arribaK; brazos_0K; brazos_45K];

datosE = [planchaE; lagartijaE; plancha_boca_arribaE; ...
          semiplancha_boca_arribaE; brazos_0E; brazos_45E];

% Promedio y desviación estándar para cada ejercicio
promedios = [mean(datosJ, 2), mean(datosK, 2), mean(datosE, 2)];
desviaciones = [std(datosJ, 0, 2), std(datosK, 0, 2), std(datosE, 0, 2)];

% Mostrar en forma de histograma el rendimiento de cada persona
figure;
for i = 1:6
    subplot(2, 3, i);
    bar([datosJ(i, :)', datosK(i, :)', datosE(i, :)'], 'grouped');
    title(ejercicios{i});
    xlabel('Sesión');
    ylabel('Tiempo (s)');
    legend('Alexander', 'Karla', 'Erick');
    set(gca, 'XTickLabel', {'1', '2', '3', '4', '5'});
    colormap([0 0 1; 0 1 0; 1 0 1]); % Azul para Alexander, Verde para Erick, Rosa para Karla
end

% Mostrar promedios y desviaciones estándar para cada ejercicio
disp('Promedios de tiempos para cada ejercicio (en segundos):');
disp(array2table(promedios, 'VariableNames', {'Alexander', 'Karla', 'Erick'}, 'RowNames', ejercicios));

% Cálculo de promedio y desviación estándar global para cada ejercicio
promedio_plancha = mean(plancha);
desviacion_plancha = std(plancha);
promedio_lagartija = mean(lagartija);
desviacion_lagartija = std(lagartija);
promedio_plancha_boca_arriba = mean(plancha_boca_arriba);
desviacion_plancha_boca_arriba = std(plancha_boca_arriba);
promedio_semiplancha_boca_arriba = mean(semiplancha_boca_arriba);
desviacion_semiplancha_boca_arriba = std(semiplancha_boca_arriba);
promedio_brazos_0 = mean(brazos_0);
desviacion_brazos_0 = std(brazos_0);
promedio_brazos_45 = mean(brazos_45);
desviacion_brazos_45 = std(brazos_45);

% Mostrar los resultados
disp('Promedios globales de tiempos para cada ejercicio (en segundos):');
disp(['Plancha: ', num2str(promedio_plancha)]);
disp(['Lagartija: ', num2str(promedio_lagartija)]);
disp(['Plancha Boca Arriba: ', num2str(promedio_plancha_boca_arriba)]);
disp(['Semi Plancha Boca Arriba: ', num2str(promedio_semiplancha_boca_arriba)]);
disp(['Brazos 0°: ', num2str(promedio_brazos_0)]);
disp(['Brazos 45°: ', num2str(promedio_brazos_45)]);