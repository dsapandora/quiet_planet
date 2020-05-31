class AddParametersToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string
    add_column :users, :latitude, :decimal, default: 0.0
    add_column :users, :longitude, :decimal, default: 0.0
    add_column :users, :phone, :string
    add_column :users, :fullname, :string
    add_reference :users, :city, foreign_key: true
  end
end
