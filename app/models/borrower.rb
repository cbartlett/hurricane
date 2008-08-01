class Borrower < ActiveRecord::Base

  has_many :dependents
  # dependents are not named in MISMO or the URLA, but only listed by age
 
  BORROWER_PRINT_POSITION_TYPE = ["Borrower", "CoBorrower"]
  JOINT_ASSET_LIABILITY_REPORTING_TYPE = ["Jointly", "NotJointly"] 
  MARITAL_STATUS_TYPE = ["Married", "NotProvided", "Separated", "Unknown", "Unmarried"]

#  validates_numericality_of :schooling_years, :borrower_dependent_count, :allow_nil => true, :only_integer => true
#  validates_presence_of :borrower_first_name, :borrower_last_name, :borrower_ssn
#  validates_presence_of :borrower_last_name
  
  belongs_to :loan_application
  has_many :borrower_residences
  
#  def validate
#
#    if borrower_dependent_count
#      if borrower_dependent_count.to_i != dependent_ages.split(',').length 
#        errors.add(:borrower_dependent_count, "is inconsistent with number of ages of dependents")
#      end
#    end
#  end
end
