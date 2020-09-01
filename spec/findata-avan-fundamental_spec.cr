require "./spec_helper"

describe Findata::Avan::Fundamentals do

        it "parses a Overview request to an Object" do 
            json = File.read("./spec/sample_data/overview.json")
            record = Findata::Avan::Fundamentals::Overview.from_json(json)
            record.symbol.should eq "IBM"
            
        end
end