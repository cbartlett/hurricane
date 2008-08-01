class REOProperty < ActiveRecord::Base
  
  DISPOSITIONSTATUSTYPE = ["PendingSale",
                           "RetainForRental",
                           "RetainForPrimaryOrSecondaryResidence",
                           "Sold"]


  GSEPROPERTYTYPE = ["SingleFamily",
                     "Condominium",
                     "Townhouse",
                     "Cooperative",
                     "TwoToFourUnitProperty",
                     "MultifamilyMoreThanFourUnits",
                     "ManufacturedMobileHome",
                     "CommercialNonResidential",
                     "MixedUseResidential",
                     "Farm",
                     "HomeAndBusinessCombined",
                     "Land"]
end
