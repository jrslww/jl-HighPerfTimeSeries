function mean_absolute_error(y_true::TimeArray, y_pred::TimeArray)
    true_values = values(y_true)
    pred_values = values(y_pred)
    return mean(abs.(true_values .- pred_values))
end


function mean_squared_error(y_true, y_pred)
    mse = mean((y_true .- y_pred).^2)
    return mse
end