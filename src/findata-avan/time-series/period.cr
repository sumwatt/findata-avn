require "json"
require "./series_meta.cr"
require "./series_data.cr"

module Findata::Avan::TimeSeries
        
    class Period
        include JSON::Serializable
        @[JSON::Field(key: "Meta Data")]
        property meta : SeriesMeta | SeriesMetaCompact | SeriesMetaIntraday
    end
    
end