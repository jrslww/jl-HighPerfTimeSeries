using TimeSeries

function moving_average_forecast(data, window_size, forecast_steps)
    train_data = data[1:end-forecast_steps]
    moving_avg = rolling_mean(train_data, window_size)
    forecast = moving_avg[end-forecast_steps+1:end]
    return forecast
end
