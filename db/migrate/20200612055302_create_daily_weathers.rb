class CreateDailyWeathers < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_weathers do |t|
      t.decimal :temperature
      t.decimal :humidity
      t.decimal :radiation
      t.decimal :feels_like
      t.decimal :dew_point
      t.decimal :wind_speed
      t.decimal :preasure
      t.datetime :time_in_unix
      t.string :weather_description
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
