class CreateLiabilities < ActiveRecord::Migration
  def self.up
    create_table :liabilities do |t|
      t.column :holder_street_address, :string
      t.column :holder_city, :string
      t.column :holder_state, :string
      t.column :holder_postal_code, :string
      t.column :alimony_owed_to_name, :string
      t.column :account_identifier, :string
      t.column :exclusion_indicator, :boolean
      t.column :holder_name, :string
      t.column :monthly_payment_amount, :decimal
      t.column :payoff_status_indicator, :boolean
      t.column :payoff_with_current_assets_indicator, :boolean
      t.column :remaining_term_months, :integer
      t.column :liability_type, :string
      t.column :unpaid_balance_amount, :decimal
      t.column :subject_loan_resubordination_indicator, :boolean
    end
  end

  def self.down
    drop_table :liabilities
  end
end
