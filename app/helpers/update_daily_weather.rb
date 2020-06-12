require 'uri'
require 'net/http'
require 'openssl'

module UpdateDailyWeather
  def self.update(latitude, longitude)
    url = URI("https://community-open-weather-map.p.rapidapi.com/weather?lat=#{latitude}&lon=#{longitude}&units=%2522metric%2522")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'community-open-weather-map.p.rapidapi.com'
    request["x-rapidapi-key"] = ENV['AUTH']

    response = http.request(request)
    data = JSON.parse(response.read_body)
    d = DailyWeather.new
    d.temperature = data['main']['temp']/10
    d.humidity = data['main']['humidity']
    d.radiation = 0
    d.feels_like = data['main']['feels_like']/10
    d.dew_point = 0
    d.wind_speed = data['wind']['speed']
    d.preasure = data['main']['pressure']
    d.time_in_unix = Time.at(data['dt'])
    d.weather_description = data['weather'][0]['description']
    d.latitude = latitude
    d.longitude = longitude
    d.save
  end
end
