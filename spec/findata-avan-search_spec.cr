require "./spec_helper"


describe Findata::Avan::Search do

        it "parses a Search to an Object" do 
            json = File.read("./spec/sample_data/Search.json")
            record = Findata::Avan::Search::Results.from_json(json)
            record.results.first.symbol.should eq "BA"
            
        end
end