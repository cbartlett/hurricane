class CreateDependents < ActiveRecord::Migration
  def self.up
    create_table :dependents do |t|
      t.column :borrower_id, :integer, :null => false
      t.column :dependent_age_years, :integer
    end
  end

  def self.down
    drop_table :dependents
  end
end
