# High-Performance Time Series Analysis using Julia

This project demonstrates high-performance time series analysis using the Julia programming language and the TimeSeries.jl library. The project uses stock price data for Apple Inc. (AAPL) to showcase data manipulation, aggregation, and forecasting tasks efficiently.

## Dataset

The dataset consists of historical daily stock prices for Apple Inc. (AAPL) from [insert data source here]. It includes columns for the date, opening price, high price, low price, closing price, adjusted closing price, and trading volume.

## Methodology

1. **Data loading**: The dataset is loaded from a CSV file into a TimeArray object using TimeSeries.jl.

2. **Data preprocessing**: The raw data is resampled to a monthly frequency by aggregating the adjusted closing prices.

3. **Feature engineering**: A rolling mean is calculated for the adjusted closing prices with a window size of 30 days.

4. **Modeling**: A simple moving average forecasting model is applied to predict the adjusted closing prices for the next 10 days.

5. **Evaluation**: The model's performance is evaluated using the mean absolute error (MAE) between the predicted and true adjusted closing prices.

6. **Utilities**: The rolling mean plot is saved as an image, and the forecast results are saved to a CSV file.

## Requirements

- Julia (v1.5 or higher)
- TimeSeries.jl (v0.20.0 or higher)
- Plots.jl (v1.0 or higher)

## How to Run

1. Clone the repository or download the source files.
2. Ensure that you have installed the required Julia packages.
3. Place the AAPL dataset in the "data/raw" folder as "stock_prices.csv".
4. Run the "main.jl" file from the terminal
5. The output, including the rolling mean plot and forecast results, will be saved in the "output" folder.

##License
This project is licensed under the MIT License. See the LICENSE file for details.