require 'test_helper'

class KomunesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @komune = komunes(:one)
  end

  test "should get index" do
    get komunes_url
    assert_response :success
  end

  test "should get new" do
    get new_komune_url
    assert_response :success
  end

  test "should create komune" do
    assert_difference('Komune.count') do
      post komunes_url, params: { komune: { co2_foot_print_value: @komune.co2_foot_print_value, latitude: @komune.latitude, logitude: @komune.logitude, photo: @komune.photo, user: @komune.user, value: @komune.value } }
    end

    assert_redirected_to komune_url(Komune.last)
  end

  test "should show komune" do
    get komune_url(@komune)
    assert_response :success
  end

  test "should get edit" do
    get edit_komune_url(@komune)
    assert_response :success
  end

  test "should update komune" do
    patch komune_url(@komune), params: { komune: { co2_foot_print_value: @komune.co2_foot_print_value, latitude: @komune.latitude, logitude: @komune.logitude, photo: @komune.photo, user: @komune.user, value: @komune.value } }
    assert_redirected_to komune_url(@komune)
  end

  test "should destroy komune" do
    assert_difference('Komune.count', -1) do
      delete komune_url(@komune)
    end

    assert_redirected_to komunes_url
  end
end
