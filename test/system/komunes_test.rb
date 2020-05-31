require "application_system_test_case"

class KomunesTest < ApplicationSystemTestCase
  setup do
    @komune = komunes(:one)
  end

  test "visiting the index" do
    visit komunes_url
    assert_selector "h1", text: "Komunes"
  end

  test "creating a Komune" do
    visit komunes_url
    click_on "New Komune"

    fill_in "Co2 foot print value", with: @komune.co2_foot_print_value
    fill_in "Latitude", with: @komune.latitude
    fill_in "Logitude", with: @komune.logitude
    fill_in "Photo", with: @komune.photo
    fill_in "User", with: @komune.user
    fill_in "Value", with: @komune.value
    click_on "Create Komune"

    assert_text "Komune was successfully created"
    click_on "Back"
  end

  test "updating a Komune" do
    visit komunes_url
    click_on "Edit", match: :first

    fill_in "Co2 foot print value", with: @komune.co2_foot_print_value
    fill_in "Latitude", with: @komune.latitude
    fill_in "Logitude", with: @komune.logitude
    fill_in "Photo", with: @komune.photo
    fill_in "User", with: @komune.user
    fill_in "Value", with: @komune.value
    click_on "Update Komune"

    assert_text "Komune was successfully updated"
    click_on "Back"
  end

  test "destroying a Komune" do
    visit komunes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Komune was successfully destroyed"
  end
end
