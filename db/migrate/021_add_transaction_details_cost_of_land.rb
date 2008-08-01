class AddTransactionDetailsCostOfLand < ActiveRecord::Migration
  def self.up
    add_column :transaction_details, :cost_of_land_acquired, :decimal, :precision => 8, :scale => 2
  end

  def self.down
    remove_column :transaction_details, :cost_of_land_acquired 
  end
end
