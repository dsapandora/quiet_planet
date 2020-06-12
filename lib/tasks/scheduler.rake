require 'uri'
require 'net/http'
require 'openssl'

desc "These tasks can be called by the Heroku scheduler add-on"

task update_daily_weather: :environment do
  CheckPoint.all.each do |ck|
    UpdateDailyWeather.update(ck.latitude, ck.longitude)
  end
end


task update_old_daily_weather: :environment do
  initial = 4.days.ago.beginning_of_day
  stop_date = DateTime.now
  check_date = initial
  while check_date < stop_date
    CheckPoint.all.each do |ck|
      url = URI("https://community-open-weather-map.p.rapidapi.com/onecall/timemachine?lat=#{ck.latitude}&lon=#{ck.longitude}&dt=#{check_date.to_time.to_i}")
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(url)
      request["x-rapidapi-host"] = 'community-open-weather-map.p.rapidapi.com'
      request["x-rapidapi-key"] = 'd637a1efc4msh9baa624d03c7a03p1eafd8jsn6b8adf289ef3'
      response = http.request(request)
      data_list = JSON.parse(response.read_body)
      data_list.hourly.each do |data|
        d = DailyWeather.new
        d.temperature = data['temp']/10
        d.humidity = data['humidity']
        d.radiation = 0
        d.feels_like = data['feels_like']/10
        d.dew_point = data['dew_point']
        d.wind_speed = data['speed']
        d.preasure = data['pressure']
        d.time_in_unix = data['dt']
        d.weather_description = data['weather'][0]['description']
        d.latitude = latitude
        d.longitude = longitude
        d.save
      end
    end
    check_date + 1.day
  end
end
