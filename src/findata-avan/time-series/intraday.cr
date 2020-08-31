require "json"
require "./series_meta_compact.cr"
require "./series_data.cr"


module Findata::Avan
        
    class TimeSeriesIntradayc
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : SeriesMetaCompact

        @[JSON::Field(key: "Time Series (Daily)")]
        property daily : Hash(String, SeriesData)

    end
    
end