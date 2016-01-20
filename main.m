%% glowny skrypt uruchamiajacy poszczegolne czesci programu
clear all;
close all;

%% ustawienia symulacji
config
%% wyznaczanie transmitancji oryginalnych obiektów
make_tf
%% badanie metody MO
object_estimation_for_MO
MO_test
%% badanie metody SO
object_estimation_for_SO
SO_test
