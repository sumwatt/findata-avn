require "json"
require "./series_meta_compact.cr"
require "./series_data_adj.cr"


module Findata::Avan
    
    class TimeSeriesDailyAdj
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : SeriesMetaCompact

        @[JSON::Field(key: "Time Series (Daily)")]
        property daily : Hash(String, SeriesDataAdj)

    end
    
end