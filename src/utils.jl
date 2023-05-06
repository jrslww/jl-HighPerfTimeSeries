using TimeSeries
using CSV
using DataFrames
using Plots

# Save a TimeArray object to a CSV file
function save_timearray_to_csv(data::TimeArray, file_path::String)
    df = DataFrame(data)
    CSV.write(file_path, df)
end

# Plot a single time series
function plot_time_series(data::TimeArray, title::String, ylabel::String)
    plot(data, title=title, ylabel=ylabel, legend=:topleft)
end

# Plot multiple time series
function plot_multiple_time_series(data::Vector{<:TimeArray}, labels::Vector{<:String}, title::String, ylabel::String)
    p = plot(title=title, ylabel=ylabel)
    for (i, series) in enumerate(data)
        plot!(p, series, label=labels[i], lw=2)
    end
    return p
end

# Plot a time series with its rolling mean
function plot_time_series_with_rolling_mean(data::TimeArray, window_size::Int, title::String, ylabel::String)
    rolling_mean_data = rolling_mean(data, window_size)
    p = plot_time_series([data, rolling_mean_data], ["Data", "Rolling Mean"], title, ylabel)
    return p
end

# Plot the actual values and forecasts
function plot_forecast(data::TimeArray, forecast::TimeArray, title::String, ylabel::String)
    p = plot_time_series([data, forecast], ["Actual", "Forecast"], title, ylabel)
    return p
end
