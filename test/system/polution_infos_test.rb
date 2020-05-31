require "application_system_test_case"

class PolutionInfosTest < ApplicationSystemTestCase
  setup do
    @polution_info = polution_infos(:one)
  end

  test "visiting the index" do
    visit polution_infos_url
    assert_selector "h1", text: "Polution Infos"
  end

  test "creating a Polution info" do
    visit polution_infos_url
    click_on "New Polution Info"

    fill_in "Amfstrat", with: @polution_info.amfstrat
    fill_in "City", with: @polution_info.city_id
    fill_in "Date", with: @polution_info.date
    fill_in "Latidude", with: @polution_info.latidude
    fill_in "Logitude", with: @polution_info.logitude
    fill_in "Vcdapstrat", with: @polution_info.vcdapstrat
    fill_in "Vcdaptrop", with: @polution_info.vcdaptrop
    click_on "Create Polution info"

    assert_text "Polution info was successfully created"
    click_on "Back"
  end

  test "updating a Polution info" do
    visit polution_infos_url
    click_on "Edit", match: :first

    fill_in "Amfstrat", with: @polution_info.amfstrat
    fill_in "City", with: @polution_info.city_id
    fill_in "Date", with: @polution_info.date
    fill_in "Latidude", with: @polution_info.latidude
    fill_in "Logitude", with: @polution_info.logitude
    fill_in "Vcdapstrat", with: @polution_info.vcdapstrat
    fill_in "Vcdaptrop", with: @polution_info.vcdaptrop
    click_on "Update Polution info"

    assert_text "Polution info was successfully updated"
    click_on "Back"
  end

  test "destroying a Polution info" do
    visit polution_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Polution info was successfully destroyed"
  end
end
