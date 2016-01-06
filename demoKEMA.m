
clear;clc;close all; warning off;

fontname = 'Arial';
fontsize = 18;
fontunits = 'points';
set(0,'DefaultAxesFontName',fontname,'DefaultAxesFontSize',fontsize,'DefaultAxesFontUnits',fontunits,...
    'DefaultTextFontName',fontname,'DefaultTextFontSize',fontsize,'DefaultTextFontUnits',fontunits,...
    'DefaultLineLineWidth',4,'DefaultLineMarkerSize',18,'DefaultLineColor',[0 0 0]);

N = 20; % Labeled samples per class and domain - train
realz = 5; % number of repetitions of the experiment

addpath(genpath('../'))

%% EXP 1: two spirals, little scaling
%
disp('Exp1')
% %chose your dataset
modif.X1_3D = 0;
modif.X2_3D = 0;
%
modif.additDim = 1; % number of replication of the dimensions
%
% % chose your distortion!!
modif.classes = 0;
modif.mirror = 0;
modif.square = 0;
modif.lines = 0;
modif.scales = 0;

results1 = MAIN_TOY_LOOPS(N,realz,modif);
%save results1OA.mat results1 N realz modif

%% EXP 2: two spirals, X1 in 3D, X2 in 2D
%
disp('Exp2')
% %chose your dataset
modif.X1_3D = 1;
modif.X2_3D = 0;
%
modif.additDim = 1; % number of replication of the dimensions
%
% % chose your distortion!!
modif.classes = 0;
modif.mirror = 0;
modif.square = 0;
modif.lines = 0;
modif.scales = 0;

results2 = MAIN_TOY_LOOPS(N,realz,modif);
%save results2OA.mat results2 N realz modif


%% EXP 3: two spirals, X1 in 3D, X2 line in 3D
%
disp('Exp3')
% %chose your dataset
modif.X1_3D = 1;
modif.X2_3D = 1;
%
modif.additDim = 1; % number of replication of the dimensions
%
% % chose your distortion!!
modif.classes = 0;
modif.mirror = 0;
modif.square = 0;
modif.lines = 1;
modif.scales = 0;

results3 = MAIN_TOY_LOOPS(N,realz,modif);
%save results3OA.mat results3 N realz modif


%% EXP 4: two spirals, X1 = 3D, X2 = 3D, classes inverted in Domain 1

disp('Exp4')
% %chose your dataset
modif.X1_3D = 1;
modif.X2_3D = 1;
%
modif.additDim = 1; % number of replication of the dimensions
%
% % chose your distortion!!
modif.classes = 1;
modif.mirror = 1;
modif.square = 0;
modif.lines = 0;
modif.scales = 0;

results4 = MAIN_TOY_LOOPS(N,realz,modif);
%save results4OA.mat results4 N realz modif


%% EXP 5: two spirals, X1 = 3D, X2 = 3D, classes inverted in Domain 1 and variance increasing on z axis on domain 1.
%
disp('Exp5')
% %chose your dataset
modif.X1_3D = 1;
modif.X2_3D = 1;
%
modif.additDim = 1; % number of replication of the dimensions
%
% % chose your distortion!!
modif.classes = 1;
modif.mirror = 0;
modif.square = 0;
modif.lines = 0;
modif.scales = 5.1;

results5 = MAIN_TOY_LOOPS(N,realz,modif);
%save results5OA.mat results5 N realz modif