display('computing controller parameters...');
gl_figure_counter = 0;
T_sim = 20;
%% G1 controller
G_size = 21;
G_est = G1_est;
G = G1;
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est{i});
   sim('object.slx');
   for n=1:length(input.time)
       G_data(i,1,n) = input.time(n);
       G_data(i,2,n) = input.signals.values(n);
       G_data(i,3,n) = output.signals.values(n);
   end
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('sterowanie','wyjœcie z obiektu');
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
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est{i});
   sim('object.slx');
   G_data(i,1,:) = input.time(:);
   G_data(i,2,:) = input.signals.values(:);
   G_data(i,3,:) = output.signals.values(:);
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('sterowanie','wyjœcie z obiektu');
        
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
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est{i});
   sim('object.slx');
   G_data(i,1,:) = input.time(:);
   G_data(i,2,:) = input.signals.values(:);
   G_data(i,3,:) = output.signals.values(:);
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('sterowanie','wyjœcie z obiektu');
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
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est{i});
   sim('object.slx');
   G_data(i,1,:) = input.time(:);
   G_data(i,2,:) = input.signals.values(:);
   G_data(i,3,:) = output.signals.values(:);
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('sterowanie','wyjœcie z obiektu');
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
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est{i});
   sim('object.slx');
   G_data(i,1,:) = input.time(:);
   G_data(i,2,:) = input.signals.values(:);
   G_data(i,3,:) = output.signals.values(:);
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('sterowanie','wyjœcie z obiektu');
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
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est{i});
   sim('object.slx');
   G_data(i,1,:) = input.time(:);
   G_data(i,2,:) = input.signals.values(:);
   G_data(i,3,:) = output.signals.values(:);
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('sterowanie','wyjœcie z obiektu');
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
for j = 1:G_size2
    for i = 1:G_size
       G_s = G(j,i);
       [Kp, Ti] = set_controller_MO(G_est{j,i});
       sim('object.slx');
       G_data(j,i,1,:) = input.time(:);
       G_data(j,i,2,:) = input.signals.values(:);
       G_data(j,i,3,:) = output.signals.values(:);
       G_int(j,i) = int(end);
       if (draw_simulation)
            figure_handler = figure();
            hold on;
            plot(input.time,input.signals.values);
            plot(output.time,output.signals.values,'r');
            title('Symulacja zamkniêtej pêtli sterowania');
            legend('sterowanie','wyjœcie z obiektu');
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
G_size = 11;
G_est = G8_est;
G = G8;
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est{i});
   sim('object.slx');
   G_data(i,1,:) = input.time(:);
   G_data(i,2,:) = input.signals.values(:);
   G_data(i,3,:) = output.signals.values(:);
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('sterowanie','wyjœcie z obiektu');
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
for i = 1:G_size
   G_s = G(i);
   [Kp, Ti] = set_controller_MO(G_est{i});
   sim('object.slx');
   G_data(i,1,:) = input.time(:);
   G_data(i,2,:) = input.signals.values(:);
   G_data(i,3,:) = output.signals.values(:);
   G_int(i) = int(end);
   if (draw_simulation)
        figure_handler = figure();
        hold on;
        plot(input.time,input.signals.values);
        plot(output.time,output.signals.values,'r');
        title('Symulacja zamkniêtej pêtli sterowania');
        legend('sterowanie','wyjœcie z obiektu');
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
