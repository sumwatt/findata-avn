require "json"
require "./series_meta.cr"
require "./series_data_adj.cr"


module Findata::Avan
    
    class TimeSeriesDailyAdj
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : SeriesMeta

        @[JSON::Field(key: "Time Series (Daily)")]
        property daily : Hash(String, SeriesDataAdj)

    end
    
end