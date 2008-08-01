class AddHousingExpenseCols < ActiveRecord::Migration
  def self.up
    add_column :housing_expenses, :present_total_amount, :decimal, :precision => 8, :scale => 2, :default => 0 
    add_column :housing_expenses, :proposed_total_amount, :decimal, :precision => 8, :scale => 2, :default => 0 
  end	       
	       
  def self.down
    remove_column :housing_expenses, :present_total_amount 
    remove_column :housing_expenses, :proposed_total_amount
  end
end