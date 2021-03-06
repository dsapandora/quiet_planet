require 'uri'
require 'net/http'
require 'openssl'

desc "These tasks can be called by the Heroku scheduler add-on"

task update_daily_weather: :environment do
  CheckPoint.all.each do |ck|
    UpdateDailyWeather.update(ck.latitude, ck.longitude)
  end
end

task historical_monthly_data: :environment do
  initial = DateTime.now.beginning_of_year - 6.months
  stop_date = DateTime.now - 5.days
  check_date = initial
  while check_date < stop_date do
    CheckPoint.all.each do |ck|
      url = URI("https://visual-crossing-weather.p.rapidapi.com/history?dayStartTime=00:00:00&contentType=json&dayEndTime=23:00:00&shortColumnNames=false&startDateTime=#{check_date.strftime('%Y-%m-%dT00:00:00')}&aggregateHours=1&location=#{ck.latitude},#{ck.longitude}&endDateTime=#{(check_date  +13.days).strftime('%Y-%m-%dT23:00:00')}&unitGroup=metric")
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(url)
      request["x-rapidapi-host"] = 'visual-crossing-weather.p.rapidapi.com'
      request["x-rapidapi-key"] = ENV['AUTH']
      response = http.request(request)
      data_list = JSON.parse(response.read_body)
      data_list['locations']["#{ck.latitude},#{ck.longitude}"]['values'].each do |data|
        d = DailyWeather.new
        d.temperature = data['temp']
        d.humidity = data['humidity']
        d.radiation = data['visibility']
        d.feels_like = data['heatindex']
        d.dew_point = data['dew']
        d.wind_speed = data['wspd']
        d.preasure = data['pressure']
        d.time_in_unix = data['datetimeStr'].to_datetime
        d.weather_description = data['conditions']
        d.latitude = ck.latitude
        d.longitude = ck.longitude
        d.save
      end
    end
    check_date += 15.days
  end
end


task update_old_daily_weather: :environment do
  initial = DateTime.now - 5.days
  stop_date = DateTime.now
  check_date = initial
   counter = 0
  while check_date < stop_date do
    puts check_date
    CheckPoint.all.each do |ck|
      if counter == 98
        # I need to sleep the process at least for a minute to don't block the api
        sleep(1.minutes)
        counter = 0
      else
        counter += 1
      end
      url = URI("https://community-open-weather-map.p.rapidapi.com/onecall/timemachine?lat=#{ck.latitude}&lon=#{ck.longitude}&dt=#{check_date.to_time.to_i}")
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(url)
      request["x-rapidapi-host"] = 'community-open-weather-map.p.rapidapi.com'
      request["x-rapidapi-key"] = ENV['AUTH']
      response = http.request(request)
      data_list = JSON.parse(response.read_body)
      next unless data_list.key?("hourly") && data_list["hourly"].present?
      data_list["hourly"].each do |data|
        d = DailyWeather.new
        d.temperature = data['temp']/10
        d.humidity = data['humidity']
        d.radiation = 0
        d.feels_like = data['feels_like']/10
        d.dew_point = data['dew_point']
        d.wind_speed = data['speed']
        d.preasure = data['pressure']
        d.time_in_unix = Time.at(data['dt'])
        d.weather_description = data['weather'][0]['description']
        d.latitude = ck.latitude
        d.longitude = ck.longitude
        d.save
      end
    end
    check_date = check_date + 1.day
  end
end
