class CreateBorrowers < ActiveRecord::Migration
  def self.up
    create_table :borrowers do |t|
      t.column :borrower_first_name, :string
      t.column :borrower_middle_name, :string
      t.column :borrower_last_name, :string
      t.column :borrower_name_suffix, :string
      t.column :borrower_application_signed_date, :date
      t.column :borrower_home_telephone_number, :string
      t.column :borrower_print_position, :integer
      t.column :borrower_ssn, :string
      t.column :borrower_birth_date, :date
      t.column :borrower_unparsed_name, :string
      t.column :borrower_dependent_count, :integer
      t.column :joint_asset_liability_reporting, :string
      t.column :marital_status, :string
      t.column :schooling_years, :integer
      t.column :dependent_ages, :string
    end
  end

  def self.down
    drop_table :borrowers
  end
end
