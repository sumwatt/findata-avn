require "json"
require "./series_meta_intraday.cr"
require "./series_data.cr"


module Findata::Avan
        
    class TimeSeriesIntraday
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : SeriesMetaIntraday

        @[JSON::Field(key: "Time Series (5min)")]
        property intraday : Hash(String, SeriesData)

    end
    
end