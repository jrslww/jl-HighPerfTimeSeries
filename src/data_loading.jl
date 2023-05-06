using CSV
using DataFrames
using TimeSeries

function load_data(file_path)
    raw_data = CSV.read(file_path, DataFrame)
    time_array = TimeArray(raw_data, timestamp=:Date)
    return time_array
end
