class CreateREOProperties < ActiveRecord::Migration
  def self.up
    create_table :reo_properties do |t|
      t.column :street_address, :string
      t.column :street_address2, :string
      t.column :city, :string
      t.column :state, :string
      t.column :postal_code, :string
      t.column :current_residence_indicator, :boolean
      t.column :disposition_status, :string
      t.column :gse_property_type, :string
      t.column :lien_installment_amount, :decimal
      t.column :lien_upb_amount, :decimal
      t.column :maintenance_expense_amount, :decimal
      t.column :market_value_amount, :decimal
      t.column :rental_income_gross_amount, :decimal
      t.column :rental_income_net_amount, :decimal
      t.column :subject_indicator, :boolean
    end
  end

  def self.down
    drop_table :reo_properties
  end
end
