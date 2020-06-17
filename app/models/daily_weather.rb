class DailyWeather < ApplicationRecord

  def self.to_csv
    attributes = %w{temperature humidity feels_like dew_point wind_speed preasure time_in_unix latitude longitude weather_description }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |data|
        csv << attributes.map{ |attr| data.send(attr) }
      end
    end
  end

end
