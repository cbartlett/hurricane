class CreateMortgageTerms < ActiveRecord::Migration
  def self.up
    create_table :mortgage_terms do |t|
      t.column :mortgage_type, :string
      t.column :other_mortgage_type_description, :string
      t.column :agency_case_identifier, :integer
      t.column :lender_case_identifier, :integer
      t.column :borrower_requested_loan_amount, :decimal
      t.column :base_loan_amount, :decimal
      t.column :requested_interest_rate_percent, :decimal
      t.column :loan_amortization_term_months, :integer
      t.column :loan_amortization_type, :string
      t.column :other_amortization_type_description, :string
    end
  end

  def self.down
    drop_table :mortgage_terms
  end
end
