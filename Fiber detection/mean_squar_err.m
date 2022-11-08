clear all; close all; clc;

% calculates the mean squared error of all the validation sheets
Area_f_meas = [];
Area_f_skrip = [];
for i=1:9
load("C:\Users\joshu\Documents\Arbeit\HiWi\Faserüberstände\valsheets\valsheet_"+i+".mat");

Area_f_meas = [Area_f_meas;valdata.Area_F_mm2_];
Area_f_skrip = [Area_f_skrip; valdata.Area_F_Skript];
end
err = immse(Area_f_meas,Area_f_skrip);
nSample = length(Area_f_skrip);

save("C:\Users\joshu\Documents\Arbeit\HiWi\Faserüberstände\valsheets\mean_squred_err.mat","err","nSample")