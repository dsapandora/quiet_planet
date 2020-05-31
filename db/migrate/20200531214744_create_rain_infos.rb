class CreateRainInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :rain_infos do |t|
      t.datetime :date
      t.decimal :value, default: 0.0
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
