%%
clc,
clear all,
close all,
%%
%%
data = readtable('Gold_Data.xlsx');
plot(data.Date, data.Price)
xlabel('Date')
ylabel('Predicted Value')
title('My Predicted Data Plot')

%%
data = readtable('Gold_Data.xlsx', 'VariableNamingRule', 'preserve');
data.Date = datetime(data.Date, 'InputFormat', 'MM/dd/yyyy');
plot(data.Date, data.Price)
xlabel('Date')
ylabel('Predicted Value')
title('My Predicted Data Plot')
%%


%% Load the data from the excel file
data = readtable('Gold_Data.xlsx');
% Preprocessing Data

% Step 2: Remove any missing or invalid values
data = data(~any(ismissing(data),2),:);





% Step 3: Check for trend and seasonality
plot(data.Date_index, data.SP500); % Time series plot
seasonalplot(data.SP500); % Seasonal plot
%%
% Step 4: Make the data stationary
diff_data = diff(data.Variable); % First difference
detrend_data = detrend(data.Variable); % Detrending
log_data = log(data.Variable); % Log transformation

% Step 5: Check for stationarity
adftest(diff_data); % Augmented Dickey-Fuller test
kpss(detrend_data); % Kwiatkowski-Phillips-Schmidt-Shin test

% Step 6: Split the data
cv = cvpartition(size(data,1),'Holdout',0.3);
train_data = data(training(cv),:);
test_data = data(test(cv),:);

% Step 7: Save the preprocessed data
save('preprocessed_data.mat','train_data','test_data','diff_data','detrend_data','log_data');

