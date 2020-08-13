# frozen_string_literal: true

class CreateFiiAdministrators < ActiveRecord::Migration[5.0]
  def up
    return if ActiveRecord::Base.connection.table_exists?(:fii_administrators)

    create_table :fii_administrators do |table|
      table.string :name
      table.boolean :good_reputation
      table.timestamps
    end
  end

  def down
    drop_table :fii_administrators if ActiveRecord::Base.connection.table_exists?(:fii_administrators)
  end
end
