require "json"

# Generic converters for parsing and converting JSON to specific types

#String to Float type converter for json parsing
module StringToFloat
    def self.from_json(value : JSON::PullParser) : Float64
      value.read_string.to_f
    end
end

# String to Int type converter for json parsing
module StringToInt
    def self.from_json(value : JSON::PullParser) : Int32
      # Implemented to catch cases where a value might be "None" when
      # typically an Int is expected
      #
      # @todo - AlphaVantage returns 0 in some cases and "None" in others
      # with no documentation regarding the difference
      item = value.readstring

      #returns Int32
      if item == "None"
        return 0
      else
        return item.to_i
      end
    end

    def self.from_json(value : JSON::PullParser) : Int64
      value.read_string.to_i64
    end
end
