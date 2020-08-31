require "json"
require "./series_meta.cr"
require "./series_data.cr"


module Findata::Avan
    
    class TimeSeriesMonthly
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : SeriesMeta

        @[JSON::Field(key: "Monthly Time Series", emit_null: true)]
        property monthly : Hash(String, SeriesData)?

    end
    
end