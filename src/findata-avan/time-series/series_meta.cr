require "json"

module Findata::Avan::TimeSeries
    # SeriesMeta is an object for mapping Meta data fields to an object.
    # It is used to map all API calls that do not have a 'compact' result set.
    # See: SeriesMetaCompact
    class Meta
        include JSON::Serializable

        @[JSON::Field(key: "1. Information")]
        property info : String

        @[JSON::Field(key: "2. Symbol")]
        property symbol : String

        @[JSON::Field(key: "3. Last Refreshed")]
        property last_refresh : String
    end

    class SeriesMeta < Meta
        include JSON::Serializable

        @[JSON::Field(key: "4. Time Zone")]
        property time_zone : String
    end

    class SeriesMetaCompact < Meta
        include JSON::Serializable

        @[JSON::Field(key: "4. Output Size")]
        property output_size : String

        @[JSON::Field(key: "5. Time Zone")]
        property time_zone : String
    end
    
    class SeriesMetaIntraday < Meta
        include JSON::Serializable

        @[JSON::Field(key: "4. Interval")]
        property output_size : String

        @[JSON::Field(key: "5. Output Size")]
        property output_size : String

        @[JSON::Field(key: "6. Time Zone")]
        property time_zone : String

    end
end