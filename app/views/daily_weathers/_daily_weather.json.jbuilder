json.extract! daily_weather, :id, :temperature, :humidity, :radiation, :feels_like, :dew_point, :wind_speed, :preasure, :time_in_unix, :weather_description, :latitude, :longitude, :created_at, :updated_at
json.url daily_weather_url(daily_weather, format: :json)
