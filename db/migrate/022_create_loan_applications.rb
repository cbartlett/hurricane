class CreateLoanApplications < ActiveRecord::Migration
  def self.up
    create_table :loan_applications do |t|
      t.column :name, :string
      t.column :borrower_name, :string
      t.column :coborrower_indicator, :boolean
      t.column :coborrower_name, :string
      t.column :property_street, :string
      t.column :property_city, :string
      t.column :property_state, :string
      t.column :property_postal_code, :integer
      t.column :created, :date
      t.column :last_updated, :date
      t.column :status, :string
      t.column :no_spouse_indicator, :boolean
      t.column :other_assets_indicator, :boolean
      t.column :acknowledgement_indicator, :boolean
    end
  end

  def self.down
    drop_table :loan_applications
  end
end
