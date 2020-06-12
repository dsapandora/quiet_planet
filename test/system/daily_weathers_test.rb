require "application_system_test_case"

class DailyWeathersTest < ApplicationSystemTestCase
  setup do
    @daily_weather = daily_weathers(:one)
  end

  test "visiting the index" do
    visit daily_weathers_url
    assert_selector "h1", text: "Daily Weathers"
  end

  test "creating a Daily weather" do
    visit daily_weathers_url
    click_on "New Daily Weather"

    fill_in "Dew point", with: @daily_weather.dew_point
    fill_in "Feels like", with: @daily_weather.feels_like
    fill_in "Humidity", with: @daily_weather.humidity
    fill_in "Latitude", with: @daily_weather.latitude
    fill_in "Longitude", with: @daily_weather.longitude
    fill_in "Preasure", with: @daily_weather.preasure
    fill_in "Radiation", with: @daily_weather.radiation
    fill_in "Temperature", with: @daily_weather.temperature
    fill_in "Time in unix", with: @daily_weather.time_in_unix
    fill_in "Weather description", with: @daily_weather.weather_description
    fill_in "Wind speed", with: @daily_weather.wind_speed
    click_on "Create Daily weather"

    assert_text "Daily weather was successfully created"
    click_on "Back"
  end

  test "updating a Daily weather" do
    visit daily_weathers_url
    click_on "Edit", match: :first

    fill_in "Dew point", with: @daily_weather.dew_point
    fill_in "Feels like", with: @daily_weather.feels_like
    fill_in "Humidity", with: @daily_weather.humidity
    fill_in "Latitude", with: @daily_weather.latitude
    fill_in "Longitude", with: @daily_weather.longitude
    fill_in "Preasure", with: @daily_weather.preasure
    fill_in "Radiation", with: @daily_weather.radiation
    fill_in "Temperature", with: @daily_weather.temperature
    fill_in "Time in unix", with: @daily_weather.time_in_unix
    fill_in "Weather description", with: @daily_weather.weather_description
    fill_in "Wind speed", with: @daily_weather.wind_speed
    click_on "Update Daily weather"

    assert_text "Daily weather was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily weather" do
    visit daily_weathers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily weather was successfully destroyed"
  end
end
