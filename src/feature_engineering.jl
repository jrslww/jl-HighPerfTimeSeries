using TimeSeries

function rolling_mean(data, window_size)
    return moving(mean, data, window_size)
end

function rolling_std(data, window_size)
    return moving(std, data, window_size)
end
