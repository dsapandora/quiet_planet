require 'test_helper'

class DailyWeathersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_weather = daily_weathers(:one)
  end

  test "should get index" do
    get daily_weathers_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_weather_url
    assert_response :success
  end

  test "should create daily_weather" do
    assert_difference('DailyWeather.count') do
      post daily_weathers_url, params: { daily_weather: { dew_point: @daily_weather.dew_point, feels_like: @daily_weather.feels_like, humidity: @daily_weather.humidity, latitude: @daily_weather.latitude, longitude: @daily_weather.longitude, preasure: @daily_weather.preasure, radiation: @daily_weather.radiation, temperature: @daily_weather.temperature, time_in_unix: @daily_weather.time_in_unix, weather_description: @daily_weather.weather_description, wind_speed: @daily_weather.wind_speed } }
    end

    assert_redirected_to daily_weather_url(DailyWeather.last)
  end

  test "should show daily_weather" do
    get daily_weather_url(@daily_weather)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_weather_url(@daily_weather)
    assert_response :success
  end

  test "should update daily_weather" do
    patch daily_weather_url(@daily_weather), params: { daily_weather: { dew_point: @daily_weather.dew_point, feels_like: @daily_weather.feels_like, humidity: @daily_weather.humidity, latitude: @daily_weather.latitude, longitude: @daily_weather.longitude, preasure: @daily_weather.preasure, radiation: @daily_weather.radiation, temperature: @daily_weather.temperature, time_in_unix: @daily_weather.time_in_unix, weather_description: @daily_weather.weather_description, wind_speed: @daily_weather.wind_speed } }
    assert_redirected_to daily_weather_url(@daily_weather)
  end

  test "should destroy daily_weather" do
    assert_difference('DailyWeather.count', -1) do
      delete daily_weather_url(@daily_weather)
    end

    assert_redirected_to daily_weathers_url
  end
end
