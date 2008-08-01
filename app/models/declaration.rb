class Declaration < ActiveRecord::Base
  
    CITIZENSHIPRESIDENCYTYPE = ["USCitizen",
                               "PermanentResidentAlien",
                               "NonPermanentResidentAlien",
                               "NonResidentAlien",
                               "Unknown"]

    HOMEOWNERPASTTHREEYEARSTYPE = ["Yes",
                                  "No",
                                  "Unknown"]
  
    INTENTTOOCCUPYTYPE = ["Yes",
                          "No",
                          "Unknown"]
  
    #PRIORPROPERTYTITLETYPE = ["Sole", 
    #                          "JointWithSpouse", 
    #                          "JointWithOtherThanSpouse"]
    
    PRIORPROPERTYTITLETYPE = {"Sole (S)" => "Sole", 
                              "Jointly with a Spouse (SP)" => "JointWithSpouse", 
                              "Jointly with another Person (O)" => "JointWithOtherThanSpouse"}
    
    PRIORPROPERTYUSAGETYPE = ["Investment", 
                            "PrimaryResidence", 
                            "SecondaryResidence"]
end
