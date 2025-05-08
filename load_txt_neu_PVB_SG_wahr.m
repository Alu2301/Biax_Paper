function [eps, eps_wahr, eps_z, eps_z_wahr, t_aktuell, sig_mod_Kessel, time, p, eps_wahr_x, eps_wahr_y] = load_txt_neu_PVB_SG_wahr(path,size_Eval_Start,t)

fid=fopen(path);
tline = fgetl(fid);
tlines = cell(0,1);

%komplettes Textfile einlesen
while ischar(tline)
    tlines{end+1,1} = tline;
    tline = fgetl(fid);
end
fclose(fid);

for k = 2 : 6
    temp1 = tlines{k,:};
    temp2(k-1,:) = strsplit(temp1,',');
end
    
    p(1:size(temp2,2)     - 3 - size_Eval_Start,1)    = 0;
    w(1:size(temp2,2)     - 3 - size_Eval_Start,1)    = 0;
    eps_x(1:size(temp2,2) - 3 - size_Eval_Start,1)    = 0;
    eps_y(1:size(temp2,2) - 3 - size_Eval_Start,1)    = 0;
    R(1:size(temp2,2)     - 3 - size_Eval_Start,1)    = 0;

for k = 1 : size(temp2,2) - 3 - size_Eval_Start
    
    p(k,1)       = str2double(temp2{1,k+3+size_Eval_Start});
    w(k,1)       = str2double(temp2{2,k+3+size_Eval_Start});
    eps_x(k,1)   = str2double(temp2{3,k+3+size_Eval_Start})./100;
    eps_y(k,1)   = str2double(temp2{4,k+3+size_Eval_Start})./100;
    R(k,1)       = str2double(temp2{5,k+3+size_Eval_Start});

end
%% Berechnung Dicke
time = linspace(1,size(R,1),size(R,1))'./20; %nicht in Code benötigt, aber fürs debuggen 
% breakpoint bei "end" setzen und dann die einzelnen Werte über dei Zeit plotten
eps = (eps_x + eps_y)./2; %Mittelwertbildung eps technisch
eps_wahr_x = log(1 + eps_x);
eps_wahr_y = log(1 + eps_y);
eps_wahr = (log(1 + eps_x) + log(1+eps_y))./2; %Mittelwertbildung für die wahre Dehnung
eps_z = ((1 ./ ((1 + eps_x) .* (1 + eps_y))) - 1); %Berechnung vom technischen eps Z
eps_z_wahr = log(1+eps_z.*-1)*-1; %Berechnung vom wahren eps z
t_aktuell = (t+t.*eps_z_wahr); %Berechnung der aktuellen Dicke des Versuches

%% Spannung
% sig_Kesselformel = (p.*(R-t_aktuell))./(2.*t_aktuell);
sig_mod_Kessel = (p .* (R - t_aktuell).^2) ./ (t_aktuell .* (2*R - t_aktuell)); %Modifizierte Kesselformel zur Berechnung der Spannung


% Fehler = sig- sig_mod_Kessel;
% Abweichung_Prozent = (Fehler./sig_mod_Kessel).*100;

% figure;
% plot(eps_wahr, sig_Kesselformel, 'b'); hold on
% plot(eps_wahr, sig_mod_Kessel, 'r');
% %plot(eps_wahr, Fehler, 'b');
% xlabel('Dehnung [mm]');
% ylabel('Spannung [N/mm²]');
% title('Spannungs-Dehnungs Diagramm');
% legend('Kesselformel', 'Kesselformel modifiziert')
% grid on;

% figure;
% plot3(t_aktuell, R, Fehler, 'LineWidth', 1);
% xlabel('Dicke');
% ylabel('Radius');
% zlabel('Fehler');
% title('Fehler zwischen sig\_mod\_Kessel und sig\_Kesselformel');
% grid on;

end