class AddDeclarationCols < ActiveRecord::Migration
  def self.up
    add_column :declarations, :dec_desc_alimony_child_support, :string 
    add_column :declarations, :dec_desc_borrowed_down_payment, :string
    add_column :declarations, :dec_desc_co_maker_endorser_on_note, :string
    add_column :declarations, :dec_desc_declared_bankruptcy_past_seven_years, :string
    add_column :declarations, :dec_desc_delinquency_or_default, :string
    add_column :declarations, :dec_desc_direct_indirect_foreclosed_property_past_seven_years, :string
    add_column :declarations, :dec_desc_obligated_on_loan_foreclosed_or_deed_in_lieu_of_jdgmnt, :string
    add_column :declarations, :dec_desc_outstanding_judgments, :string
    add_column :declarations, :dec_desc_party_to_lawsuit, :string
	       
  end	       
	       
  def self.down
    remove_column :declarations, :dec_desc_alimony_child_support 
    remove_column :declarations, :dec_desc_borrowed_down_payment
    remove_column :declarations, :dec_desc_co_maker_endorser_on_note
    remove_column :declarations, :dec_desc_declared_bankruptcy_past_seven_years
    remove_column :declarations, :dec_desc_delinquency_or_default
    remove_column :declarations, :dec_desc_direct_indirect_foreclosed_property_past_seven_years 
    remove_column :declarations, :dec_desc_obligated_on_loan_foreclosed_or_deed_in_lieu_of_jdgmnt
    remove_column :declarations, :dec_desc_outstanding_judgments
    remove_column :declarations, :dec_desc_party_to_lawsuit
  end
end
