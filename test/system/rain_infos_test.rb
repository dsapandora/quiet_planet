require "application_system_test_case"

class RainInfosTest < ApplicationSystemTestCase
  setup do
    @rain_info = rain_infos(:one)
  end

  test "visiting the index" do
    visit rain_infos_url
    assert_selector "h1", text: "Rain Infos"
  end

  test "creating a Rain info" do
    visit rain_infos_url
    click_on "New Rain Info"

    fill_in "City", with: @rain_info.city_id
    fill_in "Date", with: @rain_info.date
    fill_in "Value", with: @rain_info.value
    click_on "Create Rain info"

    assert_text "Rain info was successfully created"
    click_on "Back"
  end

  test "updating a Rain info" do
    visit rain_infos_url
    click_on "Edit", match: :first

    fill_in "City", with: @rain_info.city_id
    fill_in "Date", with: @rain_info.date
    fill_in "Value", with: @rain_info.value
    click_on "Update Rain info"

    assert_text "Rain info was successfully updated"
    click_on "Back"
  end

  test "destroying a Rain info" do
    visit rain_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rain info was successfully destroyed"
  end
end
