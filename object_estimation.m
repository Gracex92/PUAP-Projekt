display('transfer function extimation computing...');
%% G1 estimation
G_size = 21;
G_temp = G1;
G_est = cell(1,G_size);
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = tfest(data,2,0);
   G_est{1,i} = sys;
   if (draw_plot_flag)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est{i});
   end
   if (save_plot_flag)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/',num2str(gl_figure_counter),'.tiff')]);
        close;
   end
end
G1_est = G_est; 
display('G1 estimation done...');

%% G2 estimation
G_size = 21;
G_temp = G2;
G_est = cell(1,G_size);
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = tfest(data,2,0);
   G_est{1,i} = sys;
   if (draw_plot_flag)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est{i});
   end
   if (save_plot_flag)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/',num2str(gl_figure_counter),'.tiff')]);
        close;
   end
end
G2_est = G_est; 
display('G2 estimation done...');

%% G3 estimation
G_size = 10;
G_temp = G3;
G_est = cell(1,G_size);
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = tfest(data,2,0);
   G_est{1,i} = sys;
   if (draw_plot_flag)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est{i});
   end
   if (save_plot_flag)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/',num2str(gl_figure_counter),'.tiff')]);
        close;
   end
end
G3_est = G_est;
display('G3 estimation done...');

%% G4 estimation
G_size = 6;
G_temp = G4;
G_est = cell(1,G_size);
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = tfest(data,2,0);
   G_est{1,i} = sys;
   if (draw_plot_flag)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est{i});
   end
   if (save_plot_flag)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/',num2str(gl_figure_counter),'.tiff')]);
        close;
   end
end
G4_est = G_est;
display('G4 estimation done...');

%% G5 estimation
G_size = 9;
G_temp = G5;
G_est = cell(1,G_size);
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = tfest(data,2,0);
   G_est{1,i} = sys;
   if (draw_plot_flag)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est{i});
   end
   if (save_plot_flag)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/',num2str(gl_figure_counter),'.tiff')]);
        close;
   end
end
G5_est = G_est;
display('G5 estimation done...');

%% G6 estimation
G_size = 9;
G_temp = G6;
G_est = cell(1,G_size);
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = tfest(data,2,0);
   G_est{1,i} = sys;
   if (draw_plot_flag)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est{i});
   end
   if (save_plot_flag)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/',num2str(gl_figure_counter),'.tiff')]);
        close;
   end
end
G6_est = G_est;
display('G6 estimation done...');

%% G7 estimation
G_size1 = 4;
G_size2 = 9;
G_temp = G7;
G_est = cell(G_size1,G_size2);
for i = 1:G_size1
    for j = 1:G_size2
       G_s = G_temp(i,j);
       sim('tf_est.slx');
       data = iddata(output,input,0.01);
       sys = tfest(data,2,0);
       G_est{i,j} = sys;
       if (draw_plot_flag)
            figure_handler = figure();
            hold on;
            step(G_temp(i));
            step(G_est{i});
       end
       if (save_plot_flag)
            gl_figure_counter = gl_figure_counter + 1;
            saveas(figure_handler,[pwd strcat('/wykresy/estymacje/',num2str(gl_figure_counter),'.tiff')]);
            close;
       end
    end
end
G7_est = G_est;
display('G7 estimation done...');

%% G8 estimation
G_size = 11;
G_temp = G8;
G_est = cell(1,G_size);
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = tfest(data,2,0);
   G_est{1,i} = sys;
   if (draw_plot_flag)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est{i});
   end
   if (save_plot_flag)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/',num2str(gl_figure_counter),'.tiff')]);
        close;
   end
end
G8_est = G_est;
display('G8 estimation done...');

%% G9 estimation
G_size = 10;
G_temp = G9;
G_est = cell(1,G_size);
for i = 1:G_size
   G_s = G_temp(i);
   sim('tf_est.slx');
   data = iddata(output,input,0.01);
   sys = tfest(data,2,0);
   G_est{1,i} = sys;
   if (draw_plot_flag)
        figure_handler = figure();
        hold on;
        step(G_temp(i));
        step(G_est{i});
   end
   if (save_plot_flag)
        gl_figure_counter = gl_figure_counter + 1;
        saveas(figure_handler,[pwd strcat('/wykresy/estymacje/',num2str(gl_figure_counter),'.tiff')]);
        close;
   end
end
G9_est = G_est;
display('G9 estimation done...');