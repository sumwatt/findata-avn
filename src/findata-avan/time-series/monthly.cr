require "json"
require "./series_meta.cr"
require "./series_data.cr"


module Findata::Avan::TimeSeries
    
    class Monthly < Period
        include JSON::Serializable
        @[JSON::Field(key: "Monthly Time Series", emit_null: true)]
        property data : Hash(String, SeriesData)?
    end

    class MonthlyAdj < Period
        include JSON::Serializable
        @[JSON::Field(key: "Monthly Adjusted Time Series", emit_null: true)]
        property monthly_adj : Hash(String, SeriesDataAdj)?
    end
    
end