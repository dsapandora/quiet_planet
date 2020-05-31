class CreateRaiditionInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :raidition_infos do |t|
      t.datetime :date
      t.decimal :terrain_reflectivity, default: 0.0
      t.decimal :point_radius, default: 0.0
      t.decimal :latidude, default: 0.0
      t.decimal :logitude, default: 0.0
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
