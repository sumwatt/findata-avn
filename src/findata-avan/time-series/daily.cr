require "json"
require "./period.cr"
require "./series_data.cr"


module Findata::Avan::TimeSeries
        
    class Daily < Period
        include JSON::Serializable
        @[JSON::Field(key: "Time Series (Daily)")]
        property data : Hash(String, SeriesData | SeriesDataAdj)
    end

    class DailyAdj < Period
        include JSON::Serializable
        @[JSON::Field(key: "Time Series (Daily)")]
        property data : Hash(String, SeriesData | SeriesDataAdj)
    end
    
end