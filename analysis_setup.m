clc; close all; clear all; warning off;
plot_relative_flag = 1;     % Relative to Baseline:  Yes = 1   or  No = 0
reanalyze = 0;              % 1 = redo analysis      0 = skip analysis
%% ROOT Directory
if ismac
    ROOTdir = '/Volumes/FefeSSD/DOD';
else
    ROOTdir = 'E:\DOD';
end
%% Subjects and Conditions
chinroster_filename = 'DOD_ChinRoster.xlsx';    % Animal roster Excel file
chinroster_sheet = 'BLAST';    % Animal roster sheet
Conds2Run = {strcat('pre',filesep,'Baseline'),strcat('post',filesep,'D3'),strcat('post',filesep,'D14'),strcat('post',filesep,'D28'),strcat('post',filesep,'D56')};
Chins2Run={'Q463'};
analysis_run(ROOTdir,Chins2Run,Conds2Run,chinroster_filename,chinroster_sheet,plot_relative_flag,reanalyze);