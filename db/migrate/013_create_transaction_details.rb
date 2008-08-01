class CreateTransactionDetails < ActiveRecord::Migration
  def self.up
    create_table :transaction_details do |t|
      t.column :alterations_improvements_and_repairs_amount, :decimal, :precision => 8, :scale => 2
      t.column :borrower_paid_discount_points_total_amount, :decimal, :precision => 8, :scale => 2
      t.column :estimated_closing_costs_amount, :decimal, :precision => 8, :scale => 2
      t.column :mi_and_funding_fee_financed_amount, :decimal, :precision => 8, :scale => 2
      t.column :mi_and_fundingfee_total_amount, :decimal, :precision => 8, :scale => 2
      t.column :prepaid_items_estimated_amount, :decimal, :precision => 8, :scale => 2
      t.column :purchase_price_amount, :decimal, :precision => 8, :scale => 2
      t.column :refinance_including_debts_to_be_paid_off_amount, :decimal, :precision => 8, :scale => 2
      t.column :sales_concession_amount, :decimal, :precision => 8, :scale => 2
      t.column :seller_paid_closing_costs_amount, :decimal, :precision => 8, :scale => 2
      t.column :subordinate_lien_amount, :decimal, :precision => 8, :scale => 2
      t.column :subordinate_lien_heloc_amount, :decimal, :precision => 8, :scale => 2
      t.column :fre_reserve_amount, :decimal, :precision => 8, :scale => 2
      t.column :fre_reserves_amount, :decimal, :precision => 8, :scale => 2
    end
  end

  def self.down
    drop_table :transaction_details
  end
end
