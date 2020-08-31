require "json"
require "../converters.cr"

module Findata::Avan::TimeSeries

    class Data
        include JSON::Serializable
        include StringToInt
        include StringToFloat
        @[JSON::Field(key: "1. open", converter: StringToFloat)]
        property open : Float64

        @[JSON::Field(key: "2. high", converter: StringToFloat)]
        property high : Float64

        @[JSON::Field(key: "3. low", converter: StringToFloat)]
        property low : Float64

        @[JSON::Field(key: "4. close", converter: StringToFloat)]
        property close : Float64
    end

    class SeriesData < Data
        @[JSON::Field(key: "5. volume", converter: StringToInt)]
        property volume : Int32
    end

    class SeriesDataAdj < Data
        @[JSON::Field(key: "5. adjusted close", converter: StringToFloat)]
        property close : Float64

        @[JSON::Field(key: "6. volume", converter: StringToInt)]
        property volume : Int32

        @[JSON::Field(key: "7. dividend amount", converter: StringToFloat)]
        property dividend : Float64
        #This property doesn't exist in Weekly or Monthly feeds.
        @[JSON::Field(key: "8. split coefficient", converter: StringToFloat, emitnull: true) ]
        property split_coefficient : Float64?
    end
end