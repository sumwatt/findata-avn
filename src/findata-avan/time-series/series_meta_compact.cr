require "json"

module Findata::Avan
    # SeriesMetaCompact is an object for mapping Meta data fields to an object.
    # It is used to map all API calls that have a 'compact' format (returns 100 results).
    # 
    # Because the keys are numbered strings, `compact` API calls have an additional
    # meta parameter: `4. Output Size` instead of `4. Time Zone`.
    class SeriesMetaCompact
        include JSON::Serializable

        @[JSON::Field(key: "1. Information")]
        property info : String

        @[JSON::Field(key: "2. Symbol")]
        property symbol : String

        @[JSON::Field(key: "3. Last Refreshed")]
        property last_refresh : String

        @[JSON::Field(key: "4. Output Size")]
        property output_size : String

        @[JSON::Field(key: "5. Time Zone")]
        property time_zone : String

    end
    
end