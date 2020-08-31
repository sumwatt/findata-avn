require "json"
require "./series_meta.cr"
require "./series_data.cr"


module Findata::Avan::TimeSeries   
    class Weekly < Period
        include JSON::Serializable
        @[JSON::Field(key: "Weekly Time Series", emit_null: true)]
        property data : Hash(String, SeriesData)?
    end

    class WeeklyAdj < Period
        include JSON::Serializable
        @[JSON::Field(key: "Weekly Adjusted Time Series", emit_null: true)]
        property weekly_adj : Hash(String, SeriesDataAdj)?
    end
end