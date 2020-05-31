class CreateKomunes < ActiveRecord::Migration[5.2]
  def change
    create_table :komunes do |t|
      t.string :value
      t.string :photo
      t.decimal :co2_foot_print_value
      t.decimal :latitude
      t.decimal :logitude
      t.references :user

      t.timestamps
    end
  end
end
