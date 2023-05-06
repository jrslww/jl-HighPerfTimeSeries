using TimeSeries
using Statistics

function resample_monthly(data)
    return collapse(data, month, first, mean)
end