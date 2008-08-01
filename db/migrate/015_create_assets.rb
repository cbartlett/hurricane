class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.column :borrower_id, :boolean
      t.column :co_borrower_id, :boolean
      t.column :asset_type, :string
      t.column :other_asset_type_description, :string
      t.column :holder_name, :string
      t.column :holder_street_address, :string
      t.column :holder_city, :string
      t.column :holder_state, :string
      t.column :holder_postal_code, :integer
      t.column :account_identifier, :integer
      t.column :automobile_make_description, :string
      t.column :automobile_model_year, :integer
      t.column :stock_bond_mutual_fund_share_count, :integer
      t.column :life_insurance_face_value_amount, :decimal, :precision => 8, :scale => 2
      t.column :cash_or_market_value_amount, :decimal, :precision => 8, :scale => 2
    end
  end

  def self.down
    drop_table :assets
  end
end
