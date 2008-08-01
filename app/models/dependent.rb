class Dependent < ActiveRecord::Base
  
  belongs_to :borrower
  
# note that we aren't going to use Dependent in this release, 
#  but instead denormalize the ages string and store with Borrower
end
