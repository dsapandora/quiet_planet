class AddParametersToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :longitude, :decimal, default: 0.0
    add_column :cities, :latitude, :decimal, default: 0.0
  end
end
