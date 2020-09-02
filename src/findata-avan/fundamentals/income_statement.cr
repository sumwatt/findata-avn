require "json"

module Findata::Avan::Fundamentals

    class IncomeStatement
        include JSON::Serializable
        include StringToInt
        include StringToFloat

        @[JSON::Field(key: "symbol")]
        property symbol : String

        @[JSON::Field(key: "annualReports")]
        property annual_report : Array(AnnualReport)
    end

    class AnnualReport

        include JSON::Serializable
        include StringToInt
        include StringToFloat

        @[JSON::Field(key: "fiscalDateEnding", converter: Time::Format.new("%F"))]
        property fiscal_date_ending : Time

        @[JSON::Field(key: "reportedCurrency")]
        property reported_currency : String

        @[JSON::Field(key: "totalRevenue", converter: StringToInt)]
        property total_revenue : Int32 | Int64

        @[JSON::Field(key: "totalOperatingExpense", converter: StringToInt)]
        property total_opex : Int32 | Int64

        @[JSON::Field(key: "costOfRevenue", converter: StringToInt)]
        property cost_of_revenue : Int32 | Int64

        @[JSON::Field(key: "grossProfit", converter: StringToInt)]
        property grossProfit : Int32 | Int64

        @[JSON::Field(key: "ebit", converter: StringToInt)]
        property ebit : Int32 | Int64

        @[JSON::Field(key: "netIncome", converter: StringToInt)]
        property net_income : Int32 | Int64

        @[JSON::Field(key: "researchAndDevelopment", converter: StringToInt)]
        property r_and_d : Int32 | Int64

        @[JSON::Field(key: "effectOfAccountingCharges", converter: StringToInt)]
        property eff_of_acc_chrg : Int32 | Int64

        @[JSON::Field(key: "incomeBeforeTax", converter: StringToInt)]
        property pretax_income : Int32 | Int64

        @[JSON::Field(key: "minorityInterest", converter: StringToInt)]
        property minority_interest : Int32 | Int64

        @[JSON::Field(key: "sellingGeneralAdministrative", converter: StringToInt)]
        property selling_gen_admin : Int32 | Int64

        @[JSON::Field(key: "otherNonOperatingIncome", converter: StringToInt)]
        property other_nonop_income : Int32 | Int64

        @[JSON::Field(key: "operatingIncome", converter: StringToInt)]
        property operating_income : Int32 | Int64

        @[JSON::Field(key: "otherOperatingExpense", converter: StringToInt)]
        property other_op_expense : Int32 | Int64

        @[JSON::Field(key: "interestExpense", converter: StringToInt)]
        property interest_expense : Int32 | Int64

        @[JSON::Field(key: "taxProvision", converter: StringToInt)]
        property tax_provision : Int32 | Int64

        @[JSON::Field(key: "interestIncome", converter: StringToInt)]
        property interest_income : Int32 | Int64

        @[JSON::Field(key: "netInterestIncome", converter: StringToInt)]
        property net_interest_income : Int32 | Int64

        @[JSON::Field(key: "extraordinaryItems", converter: StringToInt)]
        property extraordinary_items : Int32 | Int64

        @[JSON::Field(key: "nonRecurring", converter: StringToInt)]
        property non_recurring : Int32 | Int64

        @[JSON::Field(key: "otherItems", converter: StringToInt)]
        property other_items : Int32 | Int64

        @[JSON::Field(key: "incomeTaxExpense", converter: StringToInt)]
        property income_tax_expense : Int32 | Int64

        @[JSON::Field(key: "totalOtherIncomeExpense", converter: StringToInt)]
        property total_other_income_expense : Int32 | Int64

        @[JSON::Field(key: "discontinuedOperations", converter: StringToInt)]
        property discontinued_operations : Int32 | Int64

        @[JSON::Field(key: "netIncomeFromContinuingOperations", converter: StringToInt)]
        property net_income_from_cont_ops : Int32 | Int64

        @[JSON::Field(key: "netIncomeApplicableToCommonShares", converter: StringToInt)]
        property net_income_app_common_shares : Int32 | Int64

        @[JSON::Field(key: "preferredStockAndOtherAdjustments", converter: StringToInt)]
        property pref_stock_other_adj : Int32 | Int64

    end


end