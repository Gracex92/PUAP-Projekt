%% glowny skrypt uruchamiajacy poszczegolne czesci programu
% clear all;
% close all;
config
if ~exist('G1')
    make_tf
end
if ~exist('G1_est')
    object_estimation_for_MO
end
MO_test
if ~exist('G1_est')
    object_estimation_for_SO
end
SO_test