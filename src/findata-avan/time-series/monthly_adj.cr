require "json"
require "./series_meta.cr"
require "./series_data_adj.cr"


module Findata::Avan
    
    class TimeSeriesMonthlyAdj
        include JSON::Serializable

        @[JSON::Field(key: "Meta Data")]
        property meta : SeriesMeta

        @[JSON::Field(key: "Monthly Adjusted Time Series", emit_null: true)]
        property monthly_adj : Hash(String, SeriesDataAdj)?

    end
    
end