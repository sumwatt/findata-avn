require "json"

module Findata::Avan::Fundamentals
    class Overview
        include JSON::Serializable
        include StringToInt
        include StringToFloat
        include StringToInt

        # Returns the security symbol
        #
        # ```
        # Overview.symbol
        # ```
        @[JSON::Field(key: "Symbol")]
        property symbol : String

        # Returns the asset type
        #
        # ```
        # Overview.asset_type
        # ```
        @[JSON::Field(key: "AssetType")]
        property asset_type : String

        # Returns the name
        #
        # ```
        # Overview.name
        # ```
        @[JSON::Field(key: "Name")]
        property name : String

        # Returns the description
        #
        # ```
        # Overview.description
        # ```
        @[JSON::Field(key: "Description")]
        property description : String

        # Returns the exchange the security trades on
        #
        # ```
        # Overview.symbol
        # ```
        @[JSON::Field(key: "Exchange")]
        property exchange : String

        # Returns the native currency the security trades in
        #
        # ```
        # Overview.exchange
        # ```
        @[JSON::Field(key: "Currency")]
        property currency : String

        # Returns the country
        #
        # ```
        # Overview.country
        # ```
        @[JSON::Field(key: "Country")]
        property country : String

        # Returns the business sector
        #
        # ```
        # Overview.sector
        # ```
        @[JSON::Field(key: "Sector")]
        property sector : String

        # Returns the industry
        #
        # ```
        # Overview.industry
        # ```
        @[JSON::Field(key: "Industry")]
        property industry : String

        # Returns the address of the company
        #
        # ```
        # Overview.address
        # ```
        @[JSON::Field(key: "Address")]
        property address : String

        # Returns the number of full time employees
        #
        # ```
        # Overview.ft_employees
        # ```
        @[JSON::Field(key: "FullTimeEmployees")]
        property employees : String

        # Returns the fiscal year end
        # AlphaVantage: FiscalYearEnd
        #
        # ```
        # Overview.fye
        # ```
        @[JSON::Field(key: "FiscalYearEnd")]
        property fye : String

        # Returns the latest quarter
        #
        # ```
        # Overview.latest_quarter
        # ```
        @[JSON::Field(key: "LatestQuarter")]
        property latest_quarter : String

        # Returns the market capitalization
        # AlphaVantage: MarketCapitalization
        # ```
        # Overview.market_cap
        # ```
        @[JSON::Field(key: "MarketCapitalization", converter: StringToInt)]
        property market_cap : Int64 | Int32

        # Returns the ebitda
        #
        # ```
        # Overview.ebitda
        # ```
        @[JSON::Field(key: "EBITDA", converter: StringToInt)]
        property ebitda : Int64 | Int32

        # Returns the PE Ratio
        #
        # ```
        # Overview.pe
        # ```
        @[JSON::Field(key: "PERatio", converter: StringToFloat)]
        property pe : Float64

        # Returns the PEG Ratio
        #
        # ```
        # Overview.peg
        # ```
        @[JSON::Field(key: "PEGRatio", converter: StringToFloat)]
        property peg : Float64

        # Returns the book value
        #
        # ```
        # Overview.book_value
        # ```
        @[JSON::Field(key: "BookValue", converter: StringToFloat)]
        property book_value : Float64

        # Returns the dividend per share
        # AlphaVantage: DividendPerShare
        # ```
        # Overview.div_per_share
        # ```
        @[JSON::Field(key: "DividendPerShare", converter: StringToFloat)]
        property div_per_share : Float64

        # Returns the dividend yield
        #
        # ```
        # Overview.div_yield
        # ```
        @[JSON::Field(key: "DividendYield", converter: StringToFloat)]
        property div_yield : Float64

        # Returns the earnings per share
        #
        # ```
        # Overview.eps
        # ```
        @[JSON::Field(key: "EPS", converter: StringToFloat)]
        property eps : Float64

        # Returns the revenue per share
        # AlphaVantage: RevenuePerShareTTM
        # ```
        # Overview.rev_per_share
        # ```
        @[JSON::Field(key: "RevenuePerShareTTM", converter: StringToFloat)]
        property rev_per_share : Float64

        # Returns the profit margin
        #
        # ```
        # Overview.profit_margin
        # ```
        @[JSON::Field(key: "ProfitMargin", converter: StringToFloat)]
        property profit_margin : Float64

        # Returns the operating margin
        # AlphaVantage: OperatingMarginTTM
        # ```
        # Overview.op_margin
        # ```
        @[JSON::Field(key: "OperatingMarginTTM", converter: StringToFloat)]
        property op_margin : Float64

        # Returns the return on assets
        # AlphaVantage: ReturnOnAssetsTTM
        # ```
        # Overview.roa
        # ```
        @[JSON::Field(key: "ReturnOnAssetsTTM", converter: StringToFloat)]
        property roa : Float64

        # Returns the return on equity
        #
        # ```
        # Overview.roe
        # ```
        @[JSON::Field(key: "ReturnOnEquityTTM", converter: StringToFloat)]
        property roe : Float64

        # Returns the Revenue
        #
        # ```
        # Overview.revenue
        # ```
        @[JSON::Field(key: "RevenueTTM", converter: StringToInt)]
        property revenue : Int64 | Int32

        # Returns the gross profit
        #
        # ```
        # Overview.gross_profit
        # ```
        @[JSON::Field(key: "GrossProfitTTM", converter: StringToInt)]
        property gross_profit : Int64 | Int32

        # Returns the diluted EPS
        # AlphaVantage: DilutedEPSTTM
        # ```
        # Overview.diluted_eps
        # ```
        @[JSON::Field(key: "DilutedEPSTTM", converter: StringToFloat)]
        property diluted_eps : Float64

        # Returns the  YOY quarterly earnings growth
        # AlphaVantage: QuarterlyEarningsGrowthYOY
        # ```
        # Overview.quarterly_earnings_growth
        # ```
        @[JSON::Field(key: "QuarterlyEarningsGrowthYOY", converter: StringToFloat)]
        property quarterly_earnings_growth : Float64

        # Returns the quarterly revenue growth
        # AlphaVantage: QuarterlyRevenueGrowthYOY
        # ```
        # Overview.quarterly_revenue_growth
        # ```
        @[JSON::Field(key: "QuarterlyRevenueGrowthYOY", converter: StringToFloat)]
        property quarterly_revenue_growth : Float64

        # Returns the analyst target price
        # AlphaVantage: QuarterlyRevenueGrowthYOY
        # ```
        # Overview.analyst_target_price
        # ```
        @[JSON::Field(key: "AnalystTargetPrice", converter: StringToFloat)]
        property analyst_target_price : Float64

        # Returns the trailing PE
        # 
        # ```
        # Overview.trailing_pe
        # ```
        @[JSON::Field(key: "TrailingPE", converter: StringToFloat)]
        property trailing_pe : Float64

        # Returns the forward PE
        # 
        # ```
        # Overview.forward_pe
        # ```
        @[JSON::Field(key: "ForwardPE", converter: StringToFloat)]
        property forward_pe : Float64

        # Returns the price to sales ratio
        # AlphaVantage: PriceToSalesRatioTTM
        # ```
        # Overview.trailing_pe
        # ```
        @[JSON::Field(key: "PriceToSalesRatioTTM", converter: StringToFloat)]
        property price_to_sales_ratio : Float64

        # Returns the price to book
        # 
        # ```
        # Overview.price_to_book
        # ```
        @[JSON::Field(key: "PriceToBookRatio", converter: StringToFloat)]
        property price_to_book : Float64

        # Returns the EV to Revenue
        # 
        # ```
        # Overview.ev_to_revenue
        # ```
        @[JSON::Field(key: "EVToRevenue", converter: StringToFloat)]
        property ev_to_revenue : Float64

        # Returns the EV to Ebitda
        # 
        # ```
        # Overview.ev_to_ebitda
        # ```
        @[JSON::Field(key: "EVToEBITDA", converter: StringToFloat)]
        property ev_to_ebitda : Float64

        # Returns the beta
        # 
        # ```
        # Overview.beta
        # ```
        @[JSON::Field(key: "Beta", converter: StringToFloat)]
        property beta : Float64

        # Returns the 52 week high
        # AlphaVantage: 52WeekHigh
        # ```
        # Overview.high_52w
        # ```
        @[JSON::Field(key: "52WeekHigh", converter: StringToFloat)]
        property high_52w : Float64

        # Returns the 52 week low
        # AlphaVantage: 52WeekLow
        # ```
        # Overview.low_52w
        # ```
        @[JSON::Field(key: "52WeekLow", converter: StringToFloat)]
        property low_52w : Float64

        # Returns the 50 day moving average
        # AlphaVantage: 50DayMovingAverage
        # ```
        # Overview.ma_50
        # ```
        @[JSON::Field(key: "50DayMovingAverage", converter: StringToFloat)]
        property ma_50 : Float64

        # Returns the 200 day moving average
        # AlphaVantage: 200DayMovingAverage
        # ```
        # Overview.ma_200
        # ```
        @[JSON::Field(key: "200DayMovingAverage", converter: StringToFloat)]
        property ma_200 : Float64

        # Returns the shares outstanding
        # 
        # ```
        # Overview.shares_outstanding
        # ```
        @[JSON::Field(key: "SharesOutstanding", converter: StringToInt)]
        property shares_outstanding : Int32 | Int64

        # Returns the shares on float
        # 
        # ```
        # Overview.shares_float
        # ```
        @[JSON::Field(key: "SharesFloat", converter: StringToInt)]
        property shares_float : Int32 | Int64

        # Returns the shares shorted
        # 
        # ```
        # Overview.shares_short
        # ```
        @[JSON::Field(key: "SharesShort", converter: StringToInt)]
        property shares_short : Int32 | Int64

        # Returns the shars short prior month
        # AlphaVantage: SharesShortPriorMonth
        # ```
        # Overview.shares_short_pm
        # ```
        @[JSON::Field(key: "SharesShortPriorMonth", converter: StringToInt)]
        property shares_short_pm : Int32 | Int64


        # Returns the short percent outstanding
        # AlphaVantage: ShortPercentOutstanding
        # ```
        # Overview.short_pct_outstanding
        # ```
        @[JSON::Field(key: "ShortPercentOutstanding", converter: StringToFloat)]
        property short_pct_outstanding : Float64

        # Returns the short percent of float
        # AlphaVantage: ShortPercentFloat
        # ```
        # Overview.short_pct_float
        # ```
        @[JSON::Field(key: "ShortPercentFloat", converter: StringToFloat)]
        property short_pct_float : Float64

        # Returns the insider ownership percentage
        # AlphaVantage: PercentInsiders
        # ```
        # Overview.pct_insiders
        # ```
        @[JSON::Field(key: "PercentInsiders", converter: StringToFloat)]
        property pct_insiders : Float64

        # Returns the percentage of institutional ownership
        # AlphaVantage: PercentInstitutions
        # ```
        # Overview.fd_ma
        # ```
        @[JSON::Field(key: "PercentInstitutions", converter: StringToFloat)]
        property pct_institutions : Float64

        # Returns the forward annual dividend rate
        # AlphaVantage: ForwardAnnualDividendRate
        # ```
        # Overview.fwd_dividend_rate
        # ```
        @[JSON::Field(key: "ForwardAnnualDividendRate", converter: StringToFloat)]
        property fwd_dividend_rate : Float64

        # Returns the forward annual dividend yield
        # AlphaVantage: ForwardAnnualDividendYield
        # ```
        # Overview.fwd_dividend_yield
        # ```
        @[JSON::Field(key: "ForwardAnnualDividendYield", converter: StringToFloat)]
        property fwd_dividend_yield : Float64

        # Returns the payout ratio
        # 
        # ```
        # Overview.payout_ratio
        # ```
        @[JSON::Field(key: "PayoutRatio", converter: StringToFloat)]
        property payout_ratio : Float64

        # Returns the dividend date
        # 
        # ```
        # Overview.dividend_date
        # ```
        @[JSON::Field(key: "DividendDate", converter: Time::Format.new("%F"))]
        property dividend_date : Time

        # Returns the ex dividend date
        # 
        # ```
        # Overview.ex_dividend_date
        # ```
        @[JSON::Field(key: "ExDividendDate", converter: Time::Format.new("%F"))]
        property ex_dividend_date : Time

        # Returns the last split factor
        # 
        # ```
        # Overview.last_split_factor
        # ```
        @[JSON::Field(key: "LastSplitFactor")]
        property last_split_factor : String

        # Returns the last split date
        # 
        # ```
        # Overview.last_split_date
        # ```
        @[JSON::Field(key: "LastSplitDate", converter: Time::Format.new("%F"))]
        property last_split_date : Time


    end
end