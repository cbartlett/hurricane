class GovernmentMonitoring < ActiveRecord::Base
 GENDERTYPE = {"Female" => "Female", 
 #              "InformationNotProvidedUnknown", 
               "Male" => "Male"  #,
#               "NotApplicable"
              }

 RACENATIONALORIGINTYPE = ["AmericanIndianOrAlaskanNative",
                          "AsianOrPacificIslander", 
                          "BlackNotOfHispanicOrigin",
                          "Hispanic", 
                          "InformationNotProvided",
                          "Other", 
                          "WhiteNotOfHispanicOrigin"]

 HMDAETHNICITYTYPE = {"Hispanic or Latino" => "HispanicOrLatino", 
                      "Not Hispanic or Latino" => "NotHispanicOrLatino"}
 #                    "InformationNotProvidedByApplicantInMailInternetOrTelephoneApplication",
 #                    "NotApplicable"

end
