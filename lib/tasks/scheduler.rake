desc "These tasks can be called by the Heroku scheduler add-on"

task update_daily_weather: :environment do
  CheckPoint.all.each do |ck|
    UpdateDailyWeather.update(ck.latitude, ck.longitude)
  end
end
