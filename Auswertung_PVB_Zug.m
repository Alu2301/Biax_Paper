clear all
close all
clc

%% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%  +++++++++++++++++++++++++++++++ PVB ++++++++++++++++++++++++++++++++++++
%  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

%%BEREITS EINGESTELLT BILDER

%% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%  ++++++++++++++++++++++++++++++ PK01 +++++++++++++++++++++++++++++++++++
eps_zuweisung = 0:0.01:2;

t = 1.52;

size_Eval_Start = 32; 
size_Eval_Ende = 795;

path = 'Moritz_20240926_PVB09.csv';
[eps_PK01, eps_wahr_PK01, eps_z_PK01, eps_z_wahr_PK01, t_aktuell_PK01, sig_mod_Kessel_PK01, time_PK01, p_PK01, eps_wahr_x_PK01, eps_wahr_y_PK01] = load_txt_neu_PVB_SG_wahr(path,size_Eval_Start,t);
eps_wahr_PK01 = [0; eps_wahr_PK01(5:607); eps_wahr_PK01(609:end)];
eps_wahr_x_PK01 = [0; eps_wahr_x_PK01(5:607); eps_wahr_x_PK01(609:end)];
eps_wahr_y_PK01 = [0; eps_wahr_y_PK01(5:607); eps_wahr_y_PK01(609:end)];
sig_mod_Kessel_PK01 = [0; sig_mod_Kessel_PK01(5:607); sig_mod_Kessel_PK01(609:end)];
time_PK01 = [0; time_PK01(5:607); time_PK01(609:end)];
PK01_interpoliert = interp1(eps_wahr_PK01(1:659), sig_mod_Kessel_PK01(1:659), eps_zuweisung);
clear size_Eval_Start size_Eval_Ende path 

%% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%  ++++++++++++++++++++++++++++++ PK02 +++++++++++++++++++++++++++++++++++

size_Eval_Start = 41; 
size_Eval_Ende = 690;

path = 'Moritz_20240926_PVB10.csv';
[eps_PK02, eps_wahr_PK02, eps_z_PK02, eps_z_wahr_PK02, t_aktuell_PK02, sig_mod_Kessel_PK02, time_PK02, p_PK02, eps_wahr_x_PK02, eps_wahr_y_PK02] = load_txt_neu_PVB_SG_wahr(path, size_Eval_Start, t);
eps_wahr_PK02 = [0; eps_wahr_PK02];
eps_wahr_x_PK02 = [0; eps_wahr_x_PK02];
eps_wahr_y_PK02 = [0; eps_wahr_y_PK02];
sig_mod_Kessel_PK02 = [0; sig_mod_Kessel_PK02];
time_PK02 = [0; time_PK02];
PK02_interpoliert = interp1(eps_wahr_PK02(1:647), sig_mod_Kessel_PK02(1:647), eps_zuweisung);
clear size_Eval_Start size_Eval_Ende path

%% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%  ++++++++++++++++++++++++++++++ PK03 +++++++++++++++++++++++++++++++++++


size_Eval_Start = 85; 
size_Eval_Ende = 749;

path = 'Moritz_20240926_PVB11.csv';
[eps_PK03, eps_wahr_PK03, eps_z_PK03, eps_z_wahr_PK03, t_aktuell_PK03, sig_mod_Kessel_PK03, time_PK03, p_PK03, eps_wahr_x_PK03, eps_wahr_y_PK03] = load_txt_neu_PVB_SG_wahr(path, size_Eval_Start, t);
eps_wahr_PK03 = [0; eps_wahr_PK03];
eps_wahr_x_PK03 = [0; eps_wahr_x_PK03];
eps_wahr_y_PK03 = [0; eps_wahr_y_PK03];
sig_mod_Kessel_PK03 = [0; sig_mod_Kessel_PK03];
time_PK02 = [0; time_PK02];
PK03_interpoliert = interp1(eps_wahr_PK03(1:578), sig_mod_Kessel_PK03(1:578), eps_zuweisung);
clear size_Eval_Start size_Eval_Ende path

%% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%  ++++++++++++++++++++++++++++++ PK04 +++++++++++++++++++++++++++++++++++


size_Eval_Start = 45; 
size_Eval_Ende = 706;

path = 'Moritz_20240926_PVB12.csv';
[eps_PK04, eps_wahr_PK04, eps_z_PK04, eps_z_wahr_PK04, t_aktuell_PK04, sig_mod_Kessel_PK04, time_PK04, p_PK04, eps_wahr_x_PK04, eps_wahr_y_PK04] = load_txt_neu_PVB_SG_wahr(path, size_Eval_Start, t);
eps_wahr_x_PK04 = [0; eps_wahr_x_PK04(1:32); eps_wahr_x_PK04(67:322); eps_wahr_x_PK04(348:end)];
eps_wahr_y_PK04 = [0; eps_wahr_y_PK04(1:32); eps_wahr_y_PK04(67:322); eps_wahr_y_PK04(348:end)];
eps_wahr_PK04 = [0; eps_wahr_PK04(1:32); eps_wahr_PK04(67:322); eps_wahr_PK04(348:end)];
sig_mod_Kessel_PK04 = [0; sig_mod_Kessel_PK04(1:32); sig_mod_Kessel_PK04(67:322); sig_mod_Kessel_PK04(348:end)];
time_PK04 = [0; time_PK04(1:32); time_PK04(67:322); time_PK04(348:end)];
PK04_interpoliert = interp1(eps_wahr_PK04(1:555), sig_mod_Kessel_PK04(1:555), eps_zuweisung);
clear size_Eval_Start size_Eval_Ende path

%% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%  ++++++++++++++++++++++++++++++ PK05 +++++++++++++++++++++++++++++++++++


size_Eval_Start = 40; 
size_Eval_Ende = 775;

path = 'Moritz_20240926_PVB13.csv';
[eps_PK05, eps_wahr_PK05, eps_z_PK05, eps_z_wahr_PK05, t_aktuell_PK05, sig_mod_Kessel_PK05, time_PK05, p_PK05, eps_wahr_x_PK05, eps_wahr_y_PK05] = load_txt_neu_PVB_SG_wahr(path, size_Eval_Start, t);
eps_wahr_x_PK05 = [0; eps_wahr_x_PK05];
eps_wahr_y_PK05 = [0; eps_wahr_y_PK05];
eps_wahr_PK05 = [0; eps_wahr_PK05];
sig_mod_Kessel_PK05 = [0; sig_mod_Kessel_PK05];
time_PK05 = [0; time_PK05];
PK05_interpoliert = interp1(eps_wahr_PK05(1:682), sig_mod_Kessel_PK05(1:682), eps_zuweisung);
clear size_Eval_Start size_Eval_Ende path

%% Mittelwertbildung
Spannungen_gesamt = [PK01_interpoliert', PK02_interpoliert', PK03_interpoliert', PK04_interpoliert', PK05_interpoliert'];

% Initialisierung der Mittelwertmatrix
[rows, cols] = size(Spannungen_gesamt); % Dimension der Spannungsmatrix
Mittelwerte = zeros(rows, 1);           % Vektor für Mittelwerte initialisieren

% Schleife über die Zeilen der Matrix
for i = 1:rows
    aktuelle_zeile = Spannungen_gesamt(i, :);  % Zeile der Matrix auswählen
    if any(isnan(aktuelle_zeile))              % Prüfen, ob ein NaN-Wert in der Zeile vorliegt
        % Entferne alle NaN-Werte aus der Zeile
        aktuelle_zeile = aktuelle_zeile(~isnan(aktuelle_zeile));
    end
    if ~isempty(aktuelle_zeile)               % Sicherstellen, dass noch Werte übrig sind
        Mittelwerte(i) = mean(aktuelle_zeile); % Mittelwert berechnen
    else
        Mittelwerte(i) = NaN;                 % Wenn keine Werte mehr übrig sind, NaN setzen
    end
end

% Initialisierung der Standardabweichungsmatrix
[rows, cols2] = size(Spannungen_gesamt); % Dimension der Spannungsmatrix
Standardabweichungen = NaN(rows, 1);    % Vektor für Standardabweichungen initialisieren

% Schleife über die Zeilen der Matrix, ab Eintrag 11 und jeden 10. Eintrag
for i = 1:rows
    aktuelle_zeile = Spannungen_gesamt(i, :);  % Zeile der Matrix auswählen
    if any(isnan(aktuelle_zeile))              % Prüfen, ob ein NaN-Wert in der Zeile vorliegt
        % Entferne alle NaN-Werte aus der Zeile
        aktuelle_zeile = aktuelle_zeile(~isnan(aktuelle_zeile));
    end
    if ~isempty(aktuelle_zeile)                % Sicherstellen, dass noch Werte übrig sind
        Standardabweichungen(i) = std(aktuelle_zeile); % Standardabweichung berechnen
    else
        Standardabweichungen(i) = NaN;         % Wenn keine Werte mehr übrig sind, NaN setzen
    end
end

% Kombiniere die Standardabweichungen mit der Matrix
Dehnung_Spannung_Matrix = [eps_zuweisung', Spannungen_gesamt, Mittelwerte, Standardabweichungen];
Ergebnisstabelle = table(eps_zuweisung', Spannungen_gesamt(:, 1), Spannungen_gesamt(:, 2), ...
    Spannungen_gesamt(:, 3), Spannungen_gesamt(:, 4), Spannungen_gesamt(:, 5), ...
    Mittelwerte, Standardabweichungen, ...
    'VariableNames', {'Dehnung', 'Spannungen PK01', 'Spannungen PK02', 'Spannungen PK03', 'Spannungen PK04', 'Spannungen PK05', 'Mittelwerte', 'Standardabweichungen'});

%% Plot

% figure
% plot(eps_wahr_PK01,sig_mod_Kessel_PK01);hold on
% plot(eps_wahr_PK02,sig_mod_Kessel_PK02)
% plot(eps_wahr_PK03,sig_mod_Kessel_PK03)
% plot(eps_wahr_PK04,sig_mod_Kessel_PK04)
% plot(eps_wahr_PK05,sig_mod_Kessel_PK05)
% legend('PK01','PK02','PK03', 'PK04', 'PK05')
% xlabel('\epsilon')
% ylabel('\sigma [N/mm²]')
% title('Polyvinylbutyral Zugversuch')
% grid on 
% grid minor

%% Plot Mittelwert
% figure
% 
% plot(eps_zuweisung(1:92), Mittelwerte(1:92), 'k', 'LineWidth', 1); hold on
% for i = 11:10:92 % Nur für jeden 10. Eintrag
%     errorbar(eps_zuweisung(i), Mittelwerte(i), Standardabweichungen(i), ...
%              'r', 'CapSize', 4, 'LineWidth', 1); % 'r' für rote Balken
% end
% legend('Mittelwertkurve')
% xlabel('\epsilon')
% ylabel('\sigma [N/mm²]')
% title('Mittelwert mit Standardabweichung: Polyvinylbutyral (Zugversuch)')
% grid on
% grid minor

%% Plot mit Subplotbereich
% 
% figure
% 
% % Erster Plot: Einzelne Probekörper
% subplot(1,2,1) % 1 Zeile, 2 Spalten, erstes Subplot
% hold on
% plot(eps_wahr_PK01(1:574), sig_mod_Kessel_PK01(1:574), 'LineWidth', .75);
% plot(eps_wahr_PK02(1:552), sig_mod_Kessel_PK02(1:552), 'LineWidth', .75);
% plot(eps_wahr_PK03(1:545), sig_mod_Kessel_PK03(1:545),  'LineWidth', .75); 
% plot(eps_wahr_PK04(1:493), sig_mod_Kessel_PK04(1:493), 'LineWidth', .75);
% plot(eps_wahr_PK05(1:571), sig_mod_Kessel_PK05(1:571), 'LineWidth', .75);
% legend('PK01','PK02', 'PK03', 'PK04', 'PK05', 'Location', 'northwest')
% xlabel('\epsilon')
% ylabel('\sigma [N/mm²]')
% title('Zugversuch: Polyvinylbutyral')
% grid on
% grid minor % Feineres Grid aktivieren
% 
% % Zweiter Plot: Mittelwert mit Standardabweichung
% subplot(1,2,2) % 1 Zeile, 2 Spalten, zweites Subplot
% hold on
% plot(eps_zuweisung(1:92), Mittelwerte(1:92), 'k', 'LineWidth', 1); % Mittelwertlinie
% for i = 11:10:92 % Nur für jeden 10. Eintrag
%     errorbar(eps_zuweisung(i), Mittelwerte(i), Standardabweichungen(i), ...
%              'r', 'CapSize', 4, 'LineWidth', .75); % 'r' für rote Balken
% end
% legend('Mittelwert', 'Location', 'northwest')
% xlabel('\epsilon')
% ylabel('\sigma [N/mm²]')
% title('Mittelwert mit Standardabweichung')
% grid on
% grid minor % Feineres Grid aktivieren
% 
% % Einheitliche Achsenskalierung
% x_min = min(eps_zuweisung);
% x_max = 1;
% y_min = min([sig_mod_Kessel_PK01; sig_mod_Kessel_PK02; sig_mod_Kessel_PK03; sig_mod_Kessel_PK04; sig_mod_Kessel_PK05; Mittelwerte]);
% y_max = 30;
% 
% subplot(1,2,1)
% xlim([x_min x_max])
% ylim([y_min y_max])
% 
% subplot(1,2,2)
% xlim([x_min x_max])
% ylim([y_min y_max])

%% Plot der Versagensspannungen

Mittelversagensdehnung = mean([eps_wahr_PK01(659), eps_wahr_PK02(647), eps_wahr_PK03(578), eps_wahr_PK04(555), eps_wahr_PK05(682)]);
Mittelversagensspannung = mean([sig_mod_Kessel_PK01(659), sig_mod_Kessel_PK02(647), sig_mod_Kessel_PK03(578), sig_mod_Kessel_PK04(555), sig_mod_Kessel_PK05(682)]);

figure

% Kreuze für die Versagenspunkte setzen
plot(eps_wahr_PK01(659),sig_mod_Kessel_PK01(659), 'x', LineWidth=1., MarkerSize=10); hold on
plot(eps_wahr_PK02(647),sig_mod_Kessel_PK02(647), 'x', LineWidth=1., MarkerSize=10)
plot(eps_wahr_PK03(578),sig_mod_Kessel_PK03(578), 'x', LineWidth=1., MarkerSize=10)
plot(eps_wahr_PK04(555),sig_mod_Kessel_PK04(555), 'x', LineWidth=1., MarkerSize=10)
plot(eps_wahr_PK05(682),sig_mod_Kessel_PK05(682), 'x', LineWidth=1., MarkerSize=10)
%plot(Mittelversagensdehnung, Mittelversagensspannung, 'x', LineWidth=1., MarkerSize=10, Color= "r")

PK = ["PVB_PK01"; "PVB_PK02"; "PVB_PK03"; "PVB_PK04"; "PVB_PK05"]; % Erste Spalte mit Namen
Dehnung = [eps_wahr_PK01(659); eps_wahr_PK02(647); eps_wahr_PK03(578); eps_wahr_PK04(555); eps_wahr_PK05(682)];
Spannung = [sig_mod_Kessel_PK01(659); sig_mod_Kessel_PK02(647); sig_mod_Kessel_PK03(578); sig_mod_Kessel_PK04(555); sig_mod_Kessel_PK05(682)];
PVB_Versagenswerte = table(PK, Dehnung, Spannung);

% Achsenbeschriftung und Titel
xlabel('True strain $\varepsilon$ [-]', 'Interpreter', 'latex')
ylabel('True stress $\sigma$ [N/mm$^{2}$]', 'Interpreter', 'latex')

% Einheitliche Achsenskalierung
xlim([0.9, 1.1])
ylim([27, 36])

% Legende und Grid
legend('PK01', 'PK02', 'PK03', 'PK04', 'PK05', 'Mittelwert','Location', 'northwest', 'Interpreter', 'tex')
grid on
grid minor % Feineres Grid aktivieren
box on
% exportgraphics(gca, 'PVB_Versagen.emf', 'ContentType', 'vector');

%% Plot der Einzelproben in Grau mit Mittelwert in Rot
figure
hold on

% Darstellung der einzelnen Probekörper in Grau mit Legende
h1 = plot(eps_wahr_PK01, sig_mod_Kessel_PK01, 'Color', [0.7 0.7 0.7], 'LineWidth', .75, 'DisplayName', 'Probekörper');
plot(eps_wahr_PK02, sig_mod_Kessel_PK02, 'Color', [0.7 0.7 0.7], 'LineWidth', .75);
plot(eps_wahr_PK03, sig_mod_Kessel_PK03, 'Color', [0.7 0.7 0.7], 'LineWidth', .75);
plot(eps_wahr_PK04, sig_mod_Kessel_PK04, 'Color', [0.7 0.7 0.7], 'LineWidth', .75);
plot(eps_wahr_PK05, sig_mod_Kessel_PK05, 'Color', [0.7 0.7 0.7], 'LineWidth', .75);

% Mittelwert in Schwarz mit Legende
h2 = plot(eps_zuweisung(1:92), Mittelwerte(1:92), 'k', 'LineWidth', 1.5, 'DisplayName', 'Mittelwert');

% Fehlerbalken für jeden 10. Datenpunkt in Rot
for i = 11:10:92
    errorbar(eps_zuweisung(i), Mittelwerte(i), Standardabweichungen(i), ...
             'r', 'CapSize', 4, 'LineWidth', .75); % Fehlerbalken in Rot
end

xlabel('True strain $\varepsilon$ [-]', 'Interpreter', 'latex')
ylabel('True stress $\sigma$ [N/mm$^{2}$]', 'Interpreter', 'latex')

% Legende mit richtigen Zuordnungen
legend([h1, h2], {'Probekörper', 'Mittelwert'}, 'Location', 'northwest', 'Interpreter', 'tex');

grid on
grid minor
box on

% exportgraphics(gca, 'PVB_Spann_Dehn.emf', 'ContentType', 'vector');

%%
referenz = 0:0.01:1.1;

figure;
hold on;
plot(eps_wahr_x_PK01, eps_wahr_y_PK01, '.', 'Color', [0.80 0.80 0.80]); 
plot(eps_wahr_x_PK02, eps_wahr_y_PK02, '.', 'Color', [0.80 0.80 0.80]); 
plot(eps_wahr_x_PK03, eps_wahr_y_PK03, '.', 'Color', [0.80 0.80 0.80]); 
plot(eps_wahr_x_PK04, eps_wahr_y_PK04, '.', 'Color', [0.80 0.80 0.80]); 
plot(eps_wahr_x_PK05, eps_wahr_y_PK05, '.', 'Color', [0.80 0.80 0.80]); 

plot(referenz, referenz, 'Color', 'r', 'Linewidth', 1.0);

hold off;
xlabel('True strain $\varepsilon_x$ [-]', 'Interpreter', 'latex');
ylabel('True strain $\varepsilon_y$ [-]', 'Interpreter', 'latex');

box on
legend({'Messpunkte', '', '', '', '', 'Isotrope Referenz'}, 'Location', 'northwest', 'Interpreter', 'tex')
grid on;
grid minor;
% exportgraphics(gca, 'PVB_eps_x_u_y.emf', 'ContentType', 'vector');


%%
% Erster Plot: eps_wahr gegen time
figure;
hold on;
plot(time_PK01, eps_wahr_PK01, 'DisplayName', 'PK01');
plot(time_PK02(1:end-1), eps_wahr_PK02, 'DisplayName', 'PK02');
plot(time_PK03, eps_wahr_PK03(1:end-1), 'DisplayName', 'PK03');
plot(time_PK04, eps_wahr_PK04, 'DisplayName', 'PK04');
plot(time_PK05, eps_wahr_PK05, 'DisplayName', 'PK05');
hold off;
xlabel('Time $t$ [s]', 'Interpreter', 'latex');
ylabel('True strain $\varepsilon$ [-]', 'Interpreter', 'latex');
box on
legend('Location', 'northwest', 'Interpreter', 'tex');
grid on;
grid minor;
% exportgraphics(gca, 'PVB_Dehn_Zeit.emf', 'ContentType', 'vector');

% Zweiter Plot: sig_mod_Kessel gegen time
figure;
hold on;
plot(time_PK01, sig_mod_Kessel_PK01, 'DisplayName', 'PK01');
plot(time_PK02(1:end-1), sig_mod_Kessel_PK02, 'DisplayName', 'PK02');
plot(time_PK03, sig_mod_Kessel_PK03(1:end-1), 'DisplayName', 'PK03');
plot(time_PK04, sig_mod_Kessel_PK04, 'DisplayName', 'PK04');
plot(time_PK05, sig_mod_Kessel_PK05, 'DisplayName', 'PK05');
hold off;
xlabel('Time $t$ [s]', 'Interpreter', 'latex');
ylabel('True stress $\sigma$ [N/mm$^{2}$]', 'Interpreter', 'latex')
box on
legend('Location', 'northwest', 'Interpreter', 'tex');
grid on;
grid minor;
% exportgraphics(gca, 'PVB_Spann_Zeit.emf', 'ContentType', 'vector');

figure;
hold on;
plot(time_PK01, p_PK01(1:end-4), 'DisplayName', 'PK01');
plot(time_PK02(1:end-2), p_PK02, 'DisplayName', 'PK02');
plot(time_PK03, p_PK03, 'DisplayName', 'PK03');
plot(time_PK04, p_PK04((1:end-58)), 'DisplayName', 'PK04');
plot(time_PK05(1:end-1), p_PK05, 'DisplayName', 'PK05');
hold off;
xlabel('Time $t$ [s]', 'Interpreter', 'latex');
ylabel('pressure $p$ [bar]', 'Interpreter', 'latex');
box on
legend('Location', 'northwest');
grid on;
grid minor;
