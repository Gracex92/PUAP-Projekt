%% glowny skrypt uruchamiajacy poszczegolne czesci programu
clear all;
close all;
config
flag = exist('G1');
if (~flag)
    make_tf
end
flag = exist('G1_est');
if (~flag)
    object_estimation
end
controller_test