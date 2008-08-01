class CreatePropertyPurposes < ActiveRecord::Migration
  def self.up
    create_table :property_purposes do |t|
      t.column :street_address, :string
      t.column :street_address2, :string
      t.column :city, :string
      t.column :state, :string
      t.column :postal_code, :integer
      t.column :financed_number_of_units, :integer
      t.column :property_legal_description, :string
      t.column :structure_built_year, :integer
      t.column :loan_purpose, :string
      t.column :property_usage_type, :string
      t.column :property_acquired_year, :integer
      t.column :property_original_cost_amount, :decimal
      t.column :property_existing_lien_amount, :decimal
      t.column :gse_refinance_purpose, :string
      t.column :refinance_improvements_type, :string
      t.column :construction_improvement_costs_amount, :decimal
      t.column :gse_title_held_in_names, :string
      t.column :property_rights_type, :string
      t.column :gse_title_manner_held_desc, :string
      
      t.column :down_payment_source_desc, :string
    end
  end

  def self.down
    drop_table :property_purposes
  end
end
