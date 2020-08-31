require "json"
require "./series_meta.cr"
require "./series_data_adj.cr"


module Findata::Avan
    
    class TimeSeriesWeeklyAdj
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : SeriesMeta

        @[JSON::Field(key: "Weekly Adjusted Time Series", emit_null: true)]
        property weekly_adj : Hash(String, SeriesDataAdj)?

    end
    
end