function mean_absolute_error(y_true, y_pred)
    mae = mean(abs.(y_true .- y_pred))
    return mae
end

function mean_squared_error(y_true, y_pred)
    mse = mean((y_true .- y_pred).^2)
    return mse
end