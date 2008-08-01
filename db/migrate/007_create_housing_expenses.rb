class CreateHousingExpenses < ActiveRecord::Migration
  def self.up
    create_table :housing_expenses do |t|
      t.column :present_first_mortgage_principal_and_interest_amount, :decimal, :precision => 8, :scale => 2
      t.column :proposed_first_mortgage_principal_and_interest_amount, :decimal, :precision => 8, :scale => 2
      t.column :present_hazard_insurance_amount, :decimal, :precision => 8, :scale => 2
      t.column :present_homeowners_association_dues_and_condominium_fees_amount, :decimal, :precision => 8, :scale => 2
      t.column :proposed_homeowners_association_dues_and_condominium_fees_amount, :decimal, :precision => 8, :scale => 2
      t.column :proposed_hazard_insurance_amount, :decimal, :precision => 8, :scale => 2
      t.column :present_mi_amount, :decimal, :precision => 8, :scale => 2
      t.column :proposed_mi_amount, :decimal, :precision => 8, :scale => 2
      t.column :present_other_housing_expense_amount, :decimal, :precision => 8, :scale => 2
      t.column :proposed_other_housing_expense_amount, :decimal, :precision => 8, :scale => 2
      t.column :present_other_mortgage_loan_principal_and_interest_amount, :decimal, :precision => 8, :scale => 2
      t.column :proposed_other_mortgage_loan_principal_and_interest_amount, :decimal, :precision => 8, :scale => 2
      t.column :present_real_estate_tax_amount, :decimal, :precision => 8, :scale => 2
      t.column :proposed_real_estate_tax_amount, :decimal, :precision => 8, :scale => 2
      t.column :present_rent_amount, :decimal, :precision => 8, :scale => 2
      t.column :proposed_ground_rent_amount, :decimal, :precision => 8, :scale => 2
    end
  end

  def self.down
    drop_table :housing_expenses
  end
end
