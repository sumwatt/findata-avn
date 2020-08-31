require "./spec_helper"


describe Findata::Avan::TimeSeriesDaily do
    it "parses Daily Time Series to Object" do
        json = File.read("./spec/sample_data/daily.json") 
        record = Findata::Avan::TimeSeriesDaily.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeriesDailyAdj do
    it "parses Daily Adjusted Time Series to Object" do
        json = File.read("./spec/sample_data/daily_adj.json") 
        record = Findata::Avan::TimeSeriesDailyAdj.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeriesWeekly do
    it "parses Weekly Time Series to Object" do
        json = File.read("./spec/sample_data/weekly.json") 
        record = Findata::Avan::TimeSeriesWeekly.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeriesWeeklyAdj do
    it "parses Weekly Adjusted Time Series to Object" do
        json = File.read("./spec/sample_data/weekly_adj.json") 
        record = Findata::Avan::TimeSeriesWeeklyAdj.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeriesMonthly do
    it "parses Monthly Time Series to Object" do
        json = File.read("./spec/sample_data/monthly.json") 
        record = Findata::Avan::TimeSeriesWeekly.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeriesMonthlyAdj do
    it "parses Monthly Adjusted Time Series to Object" do
        json = File.read("./spec/sample_data/monthly_adj.json") 
        record = Findata::Avan::TimeSeriesMonthlyAdj.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end

describe Findata::Avan::TimeSeriesIntraday do
    it "parses Intraday Time Series to Object" do
        json = File.read("./spec/sample_data/intraday_5.json") 
        record = Findata::Avan::TimeSeriesIntraday.from_json(json)
        record.meta.symbol.should eq "IBM"    
    end    
end