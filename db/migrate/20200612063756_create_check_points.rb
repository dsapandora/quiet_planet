class CreateCheckPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :check_points do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.timestamps
    end
  end
end
