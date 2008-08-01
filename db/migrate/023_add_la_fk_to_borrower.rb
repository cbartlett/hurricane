class AddLaFkToBorrower < ActiveRecord::Migration
  def self.up
    add_column :borrowers, :loan_application_id,  :integer
  end

  def self.down
    remove_column :borrowers, :loan_application_id
  end
end
