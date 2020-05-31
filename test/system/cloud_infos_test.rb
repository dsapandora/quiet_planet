require "application_system_test_case"

class CloudInfosTest < ApplicationSystemTestCase
  setup do
    @cloud_info = cloud_infos(:one)
  end

  test "visiting the index" do
    visit cloud_infos_url
    assert_selector "h1", text: "Cloud Infos"
  end

  test "creating a Cloud info" do
    visit cloud_infos_url
    click_on "New Cloud Info"

    fill_in "Amfstrat", with: @cloud_info.amfstrat
    fill_in "Amftropclear", with: @cloud_info.amftropclear
    fill_in "Amftropcloudy", with: @cloud_info.amftropcloudy
    fill_in "City", with: @cloud_info.city_id
    fill_in "Date", with: @cloud_info.date
    fill_in "Latidude", with: @cloud_info.latidude
    fill_in "Logitude", with: @cloud_info.logitude
    click_on "Create Cloud info"

    assert_text "Cloud info was successfully created"
    click_on "Back"
  end

  test "updating a Cloud info" do
    visit cloud_infos_url
    click_on "Edit", match: :first

    fill_in "Amfstrat", with: @cloud_info.amfstrat
    fill_in "Amftropclear", with: @cloud_info.amftropclear
    fill_in "Amftropcloudy", with: @cloud_info.amftropcloudy
    fill_in "City", with: @cloud_info.city_id
    fill_in "Date", with: @cloud_info.date
    fill_in "Latidude", with: @cloud_info.latidude
    fill_in "Logitude", with: @cloud_info.logitude
    click_on "Update Cloud info"

    assert_text "Cloud info was successfully updated"
    click_on "Back"
  end

  test "destroying a Cloud info" do
    visit cloud_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cloud info was successfully destroyed"
  end
end
