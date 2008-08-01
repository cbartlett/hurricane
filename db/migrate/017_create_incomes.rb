class CreateIncomes < ActiveRecord::Migration
  def self.up
    create_table :incomes do |t|
      t.column :income_type, :string
      t.column :monthly_total_amount, :decimal, :precision => 8, :scale => 2
    end
  end

  def self.down
    drop_table :incomes
  end
end
