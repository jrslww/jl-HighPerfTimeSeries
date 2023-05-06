include("src/data_loading.jl")
include("src/data_preprocessing.jl")
include("src/feature_engineering.jl")
include("src/modeling.jl")
include("src/evaluation.jl")
include("src/utils.jl")

file_path = "data/raw/stock_prices.csv"



time_series_data = load_data(file_path)
monthly_data = resample_monthly(time_series_data)
rolling_mean_data = rolling_mean(time_series_data, 30)
forecast = moving_average_forecast(time_series_data, 30, 10)