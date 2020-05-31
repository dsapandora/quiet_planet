class CreatePolutionInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :polution_infos do |t|
      t.datetime :date
      t.decimal :vcdapstrat, default: 0.0
      t.decimal :vcdaptrop, default: 0.0
      t.decimal :amfstrat, default: 0.0
      t.decimal :latidude, default: 0.0
      t.decimal :logitude, default: 0.0
      t.decimal :vcdapbelowcloud, default: 0.0
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
