class CreateGovernmentMonitorings < ActiveRecord::Migration
  def self.up
    create_table :government_monitorings do |t|
      t.column :gender_type, :string
      t.column :other_race_national_origin_description, :string
      t.column :race_national_origin_refusal_indicator, :boolean
      t.column :race_national_origin_type, :string
      t.column :hmda_ethnicity_type, :string
    end
  end

  def self.down
    drop_table :government_monitorings
  end
end
