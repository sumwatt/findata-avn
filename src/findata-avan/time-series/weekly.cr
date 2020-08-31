require "json"
require "./series_meta.cr"
require "./series_data.cr"


module Findata::Avan    
    class TimeSeriesWeekly
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : SeriesMeta

        @[JSON::Field(key: "Weekly Time Series", emit_null: true)]
        property weekly : Hash(String, SeriesData)?
    end
end