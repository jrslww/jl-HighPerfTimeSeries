include("src/data_loading.jl")
include("src/data_preprocessing.jl")
include("src/feature_engineering.jl")
include("src/modeling.jl")
include("src/evaluation.jl")
include("src/utils.jl")

file_path = "data/raw/stock_prices.csv"
time_series_data = load_data(file_path)

# Data preprocessing
monthly_data = resample_monthly(time_series_data)

# Feature engineering
rolling_mean_data = rolling_mean(time_series_data, 30)

# Modeling
forecast_steps = 10
window_size = 30
forecast = moving_average_forecast(time_series_data, window_size, forecast_steps)

# Evaluation
y_true = time_series_data[end-forecast_steps+1:end]
mae = mean_absolute_error(y_true, forecast)
println("Mean Absolute Error: ", mae)

# Utilities
plot_rolling_mean(time_series_data, rolling_mean_data, "output/figures/rolling_mean_plot.png")
save_forecast_results(forecast, "output/results/forecast_results.csv")