class MortgageTerm < ActiveRecord::Base


  validates_numericality_of :agency_case_identifier, :lender_case_identifier, :loan_amortization_term_months, :allow_nil => true, :only_integer => true
  validates_numericality_of :borrower_requested_loan_amount, :requested_interest_rate_percent, :allow_nil => true


  #Not all LOANTYPE matches form those that don't are commented out
  LOANTYPE =            {"Conventional" => "Conventional",
                          #"FarmersHomeAdministration", 
                          "FHA" => "FHA",
                          #"HELOC", 
                          "VA" => "VA",
                          "USDA/Rural Housing Service" => "USDARuralHousingService", #Added per form - not in MISMO
                          "Other (explain)" => "Other"
                         }

  LOANAMORTIZATIONTYPE = {"ARM (type)" => "AdjustableRate",
                          "Fixed" => "Fixed", 
                          "GPM" => "GraduatedPaymentMortgage",
                          #"GrowingEquityMortgage", 
                          "Other (explain)" => "OtherAmortizationType" #,
                          #"Other"
                         }

end
