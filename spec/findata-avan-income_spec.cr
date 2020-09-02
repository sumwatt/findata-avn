require "./spec_helper"

describe Findata::Avan::Fundamentals do
    it "parses Income Statement Series to Object" do
        json = File.read("./spec/sample_data/income_statement.json") 
        record = Findata::Avan::Fundamentals::IncomeStatement.from_json(json)
        record.symbol.should eq "IBM"   
    end    
end