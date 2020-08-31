# Findata::Avan is a wrapper for the Alpha Vantage API
require "./findata-avan/*"
require "http/client"

module Findata::Avan
  VERSION = "0.1.0"

  class Request
    def initialize(key : String)
      @key = key
      @url_base = "https://www.alphavantage.co"
    end

    def time_series(ticker : String, period : String, size : String =  "compact")
      
    end

    def search(ticker : String)
      
    end

    def overview(ticker : String)
      params = "function=OVERVIEW&symbol=#{ticker}&apikey=#{@key}"
      result = fetch(params)
      # @todo - JSONSerializable on result 
      return result
    end

    private def fetch(params)
      HTTP::Client.new(URI.parse(@url_base)) do |client|
        response = client.get("/query?#{params}")
        return response
      end
    end

  end
  
end
