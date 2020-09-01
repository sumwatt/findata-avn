require "./spec_helper"


describe Findata::Avan::Quote do

        it "parses a Quote to an Object" do 
            json = File.read("./spec/sample_data/quote.json")
            record = Findata::Avan::Quote::Data.from_json(json)
            record.data.symbol.should eq "IBM"
        end
end
