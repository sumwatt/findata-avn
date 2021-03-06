require "json"
require "./series_meta.cr"
require "./series_data.cr"


module Findata::Avan::TimeSeries
    
    class Monthly < Period
        @[JSON::Field(key: "Monthly Time Series", emit_null: true)]
        property data : Hash(String, SeriesData)?
    end

    class MonthlyAdj < Period
        @[JSON::Field(key: "Monthly Adjusted Time Series", emit_null: true)]
        property data : Hash(String, SeriesDataAdj)?
    end
    
end