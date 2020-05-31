require "application_system_test_case"

class RaiditionInfosTest < ApplicationSystemTestCase
  setup do
    @raidition_info = raidition_infos(:one)
  end

  test "visiting the index" do
    visit raidition_infos_url
    assert_selector "h1", text: "Raidition Infos"
  end

  test "creating a Raidition info" do
    visit raidition_infos_url
    click_on "New Raidition Info"

    fill_in "City", with: @raidition_info.city_id
    fill_in "Date", with: @raidition_info.date
    fill_in "Latidude", with: @raidition_info.latidude
    fill_in "Logitude", with: @raidition_info.logitude
    fill_in "Point radius", with: @raidition_info.point_radius
    fill_in "Terrain reflectivity", with: @raidition_info.terrain_reflectivity
    click_on "Create Raidition info"

    assert_text "Raidition info was successfully created"
    click_on "Back"
  end

  test "updating a Raidition info" do
    visit raidition_infos_url
    click_on "Edit", match: :first

    fill_in "City", with: @raidition_info.city_id
    fill_in "Date", with: @raidition_info.date
    fill_in "Latidude", with: @raidition_info.latidude
    fill_in "Logitude", with: @raidition_info.logitude
    fill_in "Point radius", with: @raidition_info.point_radius
    fill_in "Terrain reflectivity", with: @raidition_info.terrain_reflectivity
    click_on "Update Raidition info"

    assert_text "Raidition info was successfully updated"
    click_on "Back"
  end

  test "destroying a Raidition info" do
    visit raidition_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Raidition info was successfully destroyed"
  end
end
