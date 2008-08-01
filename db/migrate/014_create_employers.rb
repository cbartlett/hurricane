class CreateEmployers < ActiveRecord::Migration
  def self.up
    create_table :employers do |t|
      t.column :name, :string
      t.column :street_address, :string 
      t.column :city, :string
      t.column :state, :string
      t.column :postal_code, :string
      t.column :telephone_number, :string
      t.column :time_in_line_of_work_years, :integer
      t.column :self_employed_indicator, :boolean
      t.column :position_description, :string
      t.column :income_employment_monthly_amount, :decimal, :precision => 8, :scale => 2
      t.column :end_date, :date
      t.column :start_date, :date
    end
  end

  def self.down
    drop_table :employers
  end
end
