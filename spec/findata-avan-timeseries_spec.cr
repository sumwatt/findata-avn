require "./spec_helper"


describe Findata::Avan::TimeSeries::Daily do
    it "parses Daily Time Series to Object" do
        json = File.read("./spec/sample_data/daily.json") 
        record = Findata::Avan::TimeSeries::Daily.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeries::DailyAdj do
    it "parses Daily Adjusted Time Series to Object" do
        json = File.read("./spec/sample_data/daily_adj.json") 
        record = Findata::Avan::TimeSeries::DailyAdj.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeries::Weekly do
    it "parses Weekly Time Series to Object" do
        json = File.read("./spec/sample_data/weekly.json") 
        record = Findata::Avan::TimeSeries::Weekly.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeries::WeeklyAdj do
    it "parses Weekly Adjusted Time Series to Object" do
        json = File.read("./spec/sample_data/weekly_adj.json") 
        record = Findata::Avan::TimeSeries::WeeklyAdj.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeries::Monthly do
    it "parses Monthly Time Series to Object" do
        json = File.read("./spec/sample_data/monthly.json") 
        record = Findata::Avan::TimeSeries::Monthly.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeries::MonthlyAdj do
    it "parses Monthly Adjusted Time Series to Object" do
        json = File.read("./spec/sample_data/monthly_adj.json") 
        record = Findata::Avan::TimeSeries::MonthlyAdj.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeries::IntradayFive do
    it "parses Intraday Time Series to Object" do
        json = File.read("./spec/sample_data/intraday_5.json") 
        record = Findata::Avan::TimeSeries::IntradayFive.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end