class Liability < ActiveRecord::Base
  
  LIABILITYTYPE = ["Alimony",
  "ChildCare",
  "ChildSupport",
  "CollectionsJudgementsAndLiens",
  "HELOC",
  "Installment",
  "JobRelatedExpenses",
  "LeasePayments",
  "MortgageLoan",
  "Open30DayChargeAccount",
  "OtherLiability",
  "Revolving",
  "SeparateMaintenanceExpense",
  "OtherExpense",
  "Taxes"]
end
