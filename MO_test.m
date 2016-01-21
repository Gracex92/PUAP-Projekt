display('computing controller parameters...');
gl_figure_counter = 0;

%% G1 controller
G_size = 21;
G_est = G1_est;
G = G1;
G_data = cell(3,G_size);
clear G_int;
T_sim = 10;
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est(i));
   sim('object.slx');
   G_data{1,i} = input.time;
   G_data{2,i} = input.signals.values;
   G_data{3,i} = output.signals.values;
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('wartoœæ zadana','wyjœcie z obiektu');
   end
   if (save_simulation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/symulacje/G1_',num2str(i),'_MO.tiff')]);
        close;
   end
end
G1_data = G_data; 
G1_int = G_int;
display('G1 simulation done...');

%% G2 controller
G_size = 21;
G_est = G2_est;
G = G2;
G_data = cell(3,G_size);
clear G_int;
T_sim = 10;
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est(i));
   sim('object.slx');
   G_data{1,i} = input.time;
   G_data{2,i} = input.signals.values;
   G_data{3,i} = output.signals.values;
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('wartoœæ zadana','wyjœcie z obiektu');
        
   end
   if (save_simulation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/symulacje/G2_',num2str(i),'_MO.tiff')]);
        close;
   end
end
G2_data = G_data; 
G2_int = G_int;
display('G2 simulation done...');

%% G3 controller
G_size = 10;
G_est = G3_est;
G = G3;
G_data = cell(3,G_size);
clear G_int;
T_sim = 30;
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est(i));
   sim('object.slx');
   G_data{1,i} = input.time;
   G_data{2,i} = input.signals.values;
   G_data{3,i} = output.signals.values;
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('wartoœæ zadana','wyjœcie z obiektu');
   end
   if (save_simulation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/symulacje/G3_',num2str(i),'_MO.tiff')]);
        close;
   end
end
G3_data = G_data; 
G3_int = G_int;
display('G3 simulation done...');

%% G4 controller
G_size = 6;
G_est = G4_est;
G = G4;
G_data = cell(3,G_size);
clear G_int;
T_sim = 10;
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est(i));
   sim('object.slx');
   G_data{1,i} = input.time;
   G_data{2,i} = input.signals.values;
   G_data{3,i} = output.signals.values;
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('wartoœæ zadana','wyjœcie z obiektu');
   end
   if (save_simulation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/symulacje/G4_',num2str(i),'_MO.tiff')]);
        close;
   end
end
G4_data = G_data; 
G4_int = G_int;
display('G4 simulation done...');

%% G5 controller
G_size = 9;
G_est = G5_est;
G = G5;
G_data = cell(3,G_size);
clear G_int;
T_sim = 5;
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est(i));
   sim('object.slx');
   G_data{1,i} = input.time;
   G_data{2,i} = input.signals.values;
   G_data{3,i} = output.signals.values;
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('wartoœæ zadana','wyjœcie z obiektu');
   end
   if (save_simulation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/symulacje/G5_',num2str(i),'_MO.tiff')]);
        close;
   end
end
G5_data = G_data; 
G5_int = G_int;
display('G5 simulation done...');

%% G6 controller
G_size = 9;
G_est = G6_est;
G = G6;
G_data = cell(3,G_size);
T_sim = 10;
clear G_int;
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est(i));
   sim('object.slx');
   G_data{1,i} = input.time;
   G_data{2,i} = input.signals.values;
   G_data{3,i} = output.signals.values;
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('wartoœæ zadana','wyjœcie z obiektu');
   end
   if (save_simulation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/symulacje/G6_',num2str(i),'_MO.tiff')]);
        close;
   end
end
G6_data = G_data; 
G6_int = G_int;
display('G6 simulation done...');

%% G7 controller
G_size = 4;
G_size2 = 9;
G_est = G7_est;
G = G7;
G_data = cell(3,G_size,G_size2);
clear G_int;
T_sim = 2;
for j = 1:G_size
    for i = 1:G_size2
       G_s = G(j,i);
       [Kp, Ti] = set_controller_MO(G_est(j,i));
       sim('object.slx');
       G_data{1,j,i} = input.time;
       G_data{2,j,i} = input.signals.values;
       G_data{3,j,i} = output.signals.values;
       G_int(j,i) = int(end);
       if (draw_simulation)
            figure_handler = figure();
            hold on;
            plot(input.time,input.signals.values);
            plot(output.time,output.signals.values,'r');
            title('Symulacja zamkniêtej pêtli sterowania');
            legend('wartoœæ zadana','wyjœcie z obiektu');
       end
       if (save_simulation)
            gl_figure_counter = gl_figure_counter + 1;
            saveas(figure_handler,[pwd strcat('/wykresy/symulacje/G7_',num2str(j),'_',num2str(i),'_MO.tiff')]);
            close;
       end
    end
end
G7_data = G_data; 
G7_int = G_int;
display('G7 simulation done...');

%% G8 controller
G_size = 7;%11;
G_est = G8_est;
G = G8;
G_data = cell(3,G_size);
clear G_int;
T_sim = 1;
for i = 1:G_size
   if i == 8 
       T_sim = 0.001;
   end
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est(i));
   sim('object.slx');
   G_data{1,i} = input.time;
   G_data{2,i} = input.signals.values;
   G_data{3,i} = output.signals.values;
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('wartoœæ zadana','wyjœcie z obiektu');
   end
   if (save_simulation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/symulacje/G8_',num2str(i),'_MO.tiff')]);
        close;
   end
end
G8_data = G_data; 
G8_int = G_int;
display('G8 simulation done...');

%% G9 controller
G_size = 10;
G_est = G9_est;
G = G9;
T_sim = 10;
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est(i));
   sim('object.slx');
   G_data{1,i} = input.time;
   G_data{2,i} = input.signals.values;
   G_data{3,i} = output.signals.values;
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('wartoœæ zadana','wyjœcie z obiektu');
   end
   if (save_simulation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/symulacje/G9_',num2str(i),'_MO.tiff')]);
        close;
   end
end
G9_data = G_data; 
G9_int = G_int;
display('G9 simulation done...');
