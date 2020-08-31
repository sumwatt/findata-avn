require "json"
require "./series_data.cr"

module Findata::Avan::TimeSeries
        
    class IntradayOne < Period
        include JSON::Serializable
        @[JSON::Field(key: "Time Series (1min)")]
        property data : Hash(String, SeriesData | SeriesDataAdj)
    end

    class IntradayFive < Period
        include JSON::Serializable
        @[JSON::Field(key: "Time Series (5min)")]
        property data : Hash(String, SeriesData | SeriesDataAdj)
    end

    class IntradayFifteen < Period       
        @[JSON::Field(key: "Time Series (15min)")]
        property data : Hash(String, SeriesData | SeriesDataAdj)
    end

    class IntradayThirty < Period       
        @[JSON::Field(key: "Time Series (30min)")]
        property data : Hash(String, SeriesData | SeriesDataAdj)
    end

    class IntradaySixty < Period       
        @[JSON::Field(key: "Time Series (60min)")]
        property data : Hash(String, SeriesData | SeriesDataAdj)
    end
    
end