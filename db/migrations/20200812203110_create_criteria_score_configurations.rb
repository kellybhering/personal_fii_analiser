# frozen_string_literal: true

class CreateCriteriaScoreConfigurations < ActiveRecord::Migration[5.0]
  def up
    return if ActiveRecord::Base.connection.table_exists?(:criteria_score_configurations)

    create_table :criteria_score_configurations do |table|
      table.decimal :administrator_reputation_weight
      table.decimal :asset_regions_weight
      table.decimal :cap_rate_weight
      table.decimal :dividend_yield_weight
      table.decimal :fees_weight
      table.decimal :number_of_assets_weight
      table.decimal :number_of_quotas_weight
      table.decimal :number_of_tenants_weight
      table.decimal :price_vs_equity_value_weight
      table.decimal :rental_contract_expiration_weight
      table.decimal :trading_volume_weight
      table.decimal :type_weight
      table.decimal :vacancy_weight
      table.decimal :value_per_m2_of_rent_per_quota_weight
      table.decimal :value_per_m2_of_rent_per_region_weight
      table.timestamps
    end
  end

  def down
    if ActiveRecord::Base.connection.table_exists?(:criteria_score_configurations)
      drop_table :criteria_score_configurations
    end
  end
end
