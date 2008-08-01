class PropertyPurpose < ActiveRecord::Base

   LOANPURPOSE = ["ConstructionOnly",
                  "ConstructionToPermanent",
                  "Purchase",
                  "Refinance",
                  "Other"]

   PROPERTYUSAGETYPE = ["Investor",
                        "PrimaryResidence",
                        "SecondHome"]

   PURPOSEOFREFINANCE = ["CashOutDebtConsolidation",
                         "CashOutHomeImprovement",
                         "CashOutLimited",
                         "CashOutOther",
                         "NoCashOutFHAStreamlinedRefinance",
                         "NoCashOutFREOwnedRefinance",                         
                         "NoCashOutOther",
                         "NoCashOutStreamlinedRefinance",
                         "ChangeInRateTerm"]

   REFINANCEIMPROVEMENTSTYPE = ["Made",
                                "ToBeMade",
                                "Unknown"]

   PROPERTYRIGHTSTYPE = ["FeeSimple",
                         "Leasehold"]

end
