require "json"

module Findata::Avan::Search

    class Results
        include JSON::Serializable
        @[JSON::Field(key: "bestMatches")]
        property results : Array(SearchData)
    end

    class SearchData 
        include JSON::Serializable
        include StringToInt
        include StringToFloat
        
        @[JSON::Field(key: "1. symbol")]
        property symbol : String

        @[JSON::Field(key: "2. name")]
        property name : String

        @[JSON::Field(key: "3. type")]
        property type : String

        @[JSON::Field(key: "5. marketOpen")]
        property marketOpen : String

        @[JSON::Field(key: "6. marketClose")]
        property marketClose : String

        @[JSON::Field(key: "7. timezone")]
        property timezone : String

        @[JSON::Field(key: "8. currency")]
        property currency : String

        @[JSON::Field(key: "9. matchScore", converter: StringToFloat )]
        property matchScore : Float64

    end
end