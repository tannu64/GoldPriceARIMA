# Gold Price Forecasting with ARIMA

This repository contains MATLAB code for time series analysis and forecasting of gold prices using ARIMA (AutoRegressive Integrated Moving Average) models.

## Project Overview

The project analyzes historical gold price data to develop a forecasting model that can predict future price movements. It implements a complete ARIMA modeling workflow:

1. Data importing and preprocessing
2. Exploratory data analysis (EDA)
3. Stationarity testing and transformation
4. Model training and evaluation
5. Forecasting future values

## Files Description

- `arima.m` - Main MATLAB script implementing the ARIMA modeling process
- `Gold_Data.xlsx` - Dataset containing historical gold price data

## Usage Instructions

1. Ensure MATLAB is installed with the Statistics and Machine Learning Toolbox
2. Clone this repository
3. Open `arima.m` in MATLAB
4. Run the script to perform analysis and generate forecasts

## Methodology

The implementation follows standard time series analysis steps:
- Data cleaning and visualization
- Stationarity assessment using ADF and KPSS tests
- Differencing and transformation to achieve stationarity
- Model parameter selection
- Training/test split for evaluation
- Forecasting and results visualization

## Results

The model aims to forecast gold price movements based on historical patterns, providing valuable insights for investment decision-making and market analysis.

