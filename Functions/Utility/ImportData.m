%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\Benjamin\OneDrive\Documents\GitHub\QARM\F-F_Research_Data_Factors_daily.CSV
%
% Auto-generated by MATLAB on 01-May-2020 16:30:21

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 5);

% Specify range and delimiter
opts.DataLines = [5, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["DATE", "MKT_RF", "SMB", "HML", "RF"];
opts.VariableTypes = ["double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
FFResearchDataFactorsdaily = readtable("Data\F-F_Research_Data_Factors_daily.CSV", opts);


%% Clear temporary variables
clear opts