class AddBorrowerMailTo < ActiveRecord::Migration
  def self.up
    add_column :borrowers, :mail_to_street_address, :string
    add_column :borrowers, :mail_to_street_address2, :string 
    add_column :borrowers, :mail_to_city, :string 
    add_column :borrowers, :mail_to_state, :string 
    add_column :borrowers, :mail_to_postal_code, :string 
    add_column :borrowers, :mail_to_country, :string
  end

  def self.down
    remove_column :borrowers, :mail_to_street_address
    remove_column :borrowers, :mail_to_street_address2 
    remove_column :borrowers, :mail_to_city 
    remove_column :borrowers, :mail_to_state 
    remove_column :borrowers, :mail_to_postal_code 
    remove_column :borrowers, :mail_to_country
  end
end
