class CreateCloudInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :cloud_infos do |t|
      t.datetime :date
      t.decimal :amfstrat, default: 0.0
      t.decimal :latidude, default: 0.0
      t.decimal :amftropclear, default: 0.0
      t.decimal :amftropcloudy, default: 0.0
      t.decimal :logitude, default: 0.0
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
