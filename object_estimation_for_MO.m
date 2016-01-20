display('transfer function estimation computing...');
%% G1 estimation
G_size = 21;
G_temp = G1;
G_est = [];
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = procest(data,'P2');
   G_est = [G_est, sys];
   if (draw_aproximation)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est(i));
        legend('obiekt idealny','obiekt aproksymowany');
   end
   if (save_aproximation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/G1_',num2str(i),'_MO_est.tiff')]);
        close;
   end
end
G1_est = G_est; 
display('G1 estimation done...');

%% G2 estimation
G_size = 21;
G_temp = G2;
G_est = [];
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = procest(data,'P2');
   G_est = [G_est, sys];
   if (draw_aproximation)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est(i));
        legend('obiekt idealny','obiekt aproksymowany');
   end
   if (save_aproximation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/G2_',num2str(i),'_MO_est.tiff')]);
        close;
   end
end
G2_est = G_est; 
display('G2 estimation done...');

%% G3 estimation
G_size = 10;
G_temp = G3;
G_est = [];
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = procest(data,'P2');
   G_est = [G_est, sys];
   if (draw_aproximation)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est(i));
        legend('obiekt idealny','obiekt aproksymowany');
   end
   if (save_aproximation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/G3_',num2str(i),'_MO_est.tiff')]);
        close;
   end
end
G3_est = G_est;
display('G3 estimation done...');

%% G4 estimation
G_size = 6;
G_temp = G4;
G_est = [];
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = procest(data,'P2');
   G_est = [G_est, sys];
   if (draw_aproximation)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est(i));
        legend('obiekt idealny','obiekt aproksymowany');
   end
   if (save_aproximation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/G4_',num2str(i),'_MO_est.tiff')]);
        close;
   end
end
G4_est = G_est;
display('G4 estimation done...');

%% G5 estimation
G_size = 9;
G_temp = G5;
G_est = [];
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = procest(data,'P2');
   G_est = [G_est, sys];
   if (draw_aproximation)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est(i));
        legend('obiekt idealny','obiekt aproksymowany');
   end
   if (save_aproximation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/G5_',num2str(i),'_MO_est.tiff')]);
        close;
   end
end
G5_est = G_est;
display('G5 estimation done...');

%% G6 estimation
G_size = 9;
G_temp = G6;
G_est = [];
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = procest(data,'P2');
   G_est = [G_est, sys];
   if (draw_aproximation)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est(i));
        legend('obiekt idealny','obiekt aproksymowany');
   end
   if (save_aproximation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/G6_',num2str(i),'_MO_est.tiff')]);
        close;
   end
end
G6_est = G_est;
display('G6 estimation done...');

%% G7 estimation
G_size1 = 4;
G_size2 = 9;
G_temp = G7;
G_est_matrix = [];
for i = 1:G_size1
    G_est = [];
    for j = 1:G_size2
       G_s = G_temp(i,j);
       sim('tf_est.slx');
       data = iddata(output,input,0.01);
       sys = procest(data,'P2');
       G_est = [G_est,sys];
       if (draw_aproximation)
            figure_handler = figure();
            hold on;
            step(G_temp(i,j));
            step(G_est(j));
            legend('obiekt idealny','obiekt aproksymowany');
       end
       if (save_aproximation)
            gl_figure_counter = gl_figure_counter + 1;
            saveas(figure_handler,[pwd strcat('/wykresy/estymacje/G7_',num2str(i),'_',num2str(j),'_MO_est.tiff')]);
            close;
       end
    end
    G_est_matrix = [G_est_matrix;G_est];
end
G7_est = G_est_matrix;
display('G7 estimation done...');

%% G8 estimation
G_size = 11;
G_temp = G8;
G_est = [];
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = procest(data,'P2');
   G_est = [G_est, sys];
   if (draw_aproximation)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est(i));
        legend('obiekt idealny','obiekt aproksymowany');
   end
   if (save_aproximation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/G8_',num2str(i),'_MO_est.tiff')]);
        close;
   end
end
G8_est = G_est;
display('G8 estimation done...');

%% G9 estimation
G_size = 10;
G_temp = G9;
G_est = [];
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = procest(data,'P2');
   G_est = [G_est, sys];
   if (draw_aproximation)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est(i));
        legend('obiekt idealny','obiekt aproksymowany');
   end
   if (save_aproximation)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/G9_',num2str(i),'_MO_est.tiff')]);
        close;
   end
end
G9_est = G_est;
display('G9 estimation done...');