require "json"

module Findata::Avan
    # SeriesMeta is an object for mapping Meta data fields to an object.
    # It is used to map all API calls that do not have a 'compact' result set.
    # See: SeriesMetaCompact
    class SeriesMeta
        include JSON::Serializable

        @[JSON::Field(key: "1. Information")]
        property info : String

        @[JSON::Field(key: "2. Symbol")]
        property symbol : String

        @[JSON::Field(key: "3. Last Refreshed")]
        property last_refresh : String

        @[JSON::Field(key: "4. Time Zone")]
        property time_zone : String

    end
    
end