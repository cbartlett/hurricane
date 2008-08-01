class AddGovernmentMonitoringCols < ActiveRecord::Migration
  def self.up
    add_column :government_monitorings, :hmda_race_american_indian_or_alaska_native, :boolean
    add_column :government_monitorings, :hmda_race_asian, :boolean
    add_column :government_monitorings, :hmda_race_black_or_african_american, :boolean
    add_column :government_monitorings, :hmda_race_native_hawaiian_or_other_pacific_islander, :boolean
    add_column :government_monitorings, :hmda_race_white, :boolean
    add_column :government_monitorings, :hmda_race_information_not_provided_by_applicant, :boolean
    add_column :government_monitorings, :hmda_race_not_applicable,  :boolean
  end

  def self.down
    remove_column :government_monitorings, :hmda_race_american_indian_or_alaska_native
    remove_column :government_monitorings, :hmda_race_asian
    remove_column :government_monitorings, :hmda_race_black_or_african_american
    remove_column :government_monitorings, :hmda_race_native_hawaiian_or_other_pacific_islander
    remove_column :government_monitorings, :hmda_race_white
    remove_column :government_monitorings, :hmda_race_information_not_provided_by_applicant
    remove_column :government_monitorings, :hmda_race_not_applicable
  end
end