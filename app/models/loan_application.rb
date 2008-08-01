class LoanApplication < ActiveRecord::Base
  
  has_many :borrowers
end
