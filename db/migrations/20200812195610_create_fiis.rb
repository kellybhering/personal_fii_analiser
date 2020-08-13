# frozen_string_literal: true

class CreateFiis < ActiveRecord::Migration[5.0]
  def up
    return if ActiveRecord::Base.connection.table_exists?(:fiis)

    create_table :fiis do |table|
      table.string :name
      table.string :type
      table.string :administrator
      # TODO: Think about creating each asset as a table. For now, it will be an array of strings
      table.string :asset_regions
      table.decimal :cap_rate
      table.decimal :last_month_dy_percentage
      table.decimal :last_six_months_dy_percentage_average
      table.decimal :last_year_dy_percentage_average
      table.integer :number_of_assets
      table.integer :number_of_quotas
      table.integer :number_of_tenants
      table.decimal :price_vs_equity_value
      # TODO: Think about creating contract with expiration as a table. For now, it will be an array of strings
      table.string :rental_contract_expiration
      table.integer :administration_fee_percentage
      table.integer :performance_fee_percentage
      table.integer :management_fee_percentage
      # TODO: Think about trading_volumen. For know it will be by millions
      table.decimal :trading_volume_in_millions
      table.decimal :vacancy_percentage
      table.decimal :value_per_m2_of_rent_per_quota
      table.decimal :value_per_m2_of_rent_per_region
      table.timestamps
    end
  end

  def down
    drop_table :fiis if ActiveRecord::Base.connection.table_exists?(:fiis)
  end
end
