class CreateBorrowerResidences < ActiveRecord::Migration
  def self.up
    create_table :borrower_residences do |t|
      t.column :borrower_id, :integer
      t.column :street_address, :string
      t.column :city, :string
      t.column :state, :string
      t.column :postal_code, :string
      t.column :country, :string
      t.column :borrower_residency_basis, :string
      t.column :borrower_residency_duration_months, :integer
      t.column :borrower_residency_duration_years, :integer
      t.column :borrower_residency_type, :string
    end
  end

  def self.down
    drop_table :borrower_residences
  end
end
