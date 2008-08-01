class CreateDeclarations < ActiveRecord::Migration
  def self.up
    create_table :declarations do |t|
      t.column :alimony_child_support_obligation_indicator, :boolean
      t.column :bankruptcy_indicator, :boolean
      t.column :borrowed_down_payment_indicator, :boolean
      t.column :citizenship_residency_type, :string
      t.column :co_maker_endorser_of_note_indicator, :boolean
      t.column :homeowner_past_three_years_type, :string
      t.column :intent_to_occupy_type, :string
      t.column :loan_foreclosure_or_judgement_indicator, :boolean
      t.column :outstanding_judgements_indicator, :boolean
      t.column :party_to_lawsuit_indicator, :boolean
      t.column :presently_delinquent_indicator, :boolean
      t.column :prior_property_title_type, :string
      t.column :prior_property_usage_type, :string
      t.column :property_foreclosed_past_seven_years_indicator, :boolean
      t.column :borrower_first_time_homebuyer_indicator, :boolean
    end
  end

  def self.down
    drop_table :declarations
  end
end
