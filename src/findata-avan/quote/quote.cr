require "json"


module Findata::Avan::Quote

    class Data
        include JSON::Serializable
        @[JSON::Field(key: "Global Quote")]
        property data : GlobalData
    end

    class GlobalData
        include JSON::Serializable
        include StringToInt
        include StringToFloat

        @[JSON::Field(key: "01. symbol")]
        property symbol : String

        @[JSON::Field(key: "02. open", converter: StringToFloat)]
        property open : Float64

        @[JSON::Field(key: "03. high", converter: StringToFloat )]
        property high : Float64

        @[JSON::Field(key: "04. low", converter: StringToFloat)]
        property low : Float64

        @[JSON::Field(key: "05. price", converter: StringToFloat)]
        property price : Float64

        @[JSON::Field(key: "06. volume", converter: StringToInt)]
        property volume : Int32 | Int64

        @[JSON::Field(key: "07. latest trading day")]
        property last_trading_day : String

        @[JSON::Field(key: "08. previous close", converter: StringToFloat)]
        property prev_close : Float64

        @[JSON::Field(key: "09. change", converter: StringToFloat)]
        property change : Float64

        # @todo Leaving this as a string. May need to try doing a calculated type or
        # customer converter
        @[JSON::Field(key: "10. change percent")]
        property change_pct : String
        
    end
end