class BorrowerResidence < ActiveRecord::Base
  
  belongs_to :borrower
  
  BORROWER_RESIDENCY_BASIS_TYPE =[
   #   "LivingRentFree",  -- not on URLA even though in MISMO 
      "Own", 
      "Rent"]
  BORROWER_RESIDENCY_TYPE = ["Current", "Prior"]
  
  validates_numericality_of :borrower_residency_duration_months

end
