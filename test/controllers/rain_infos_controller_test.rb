require 'test_helper'

class RainInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rain_info = rain_infos(:one)
  end

  test "should get index" do
    get rain_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_rain_info_url
    assert_response :success
  end

  test "should create rain_info" do
    assert_difference('RainInfo.count') do
      post rain_infos_url, params: { rain_info: { city_id: @rain_info.city_id, date: @rain_info.date, value: @rain_info.value } }
    end

    assert_redirected_to rain_info_url(RainInfo.last)
  end

  test "should show rain_info" do
    get rain_info_url(@rain_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_rain_info_url(@rain_info)
    assert_response :success
  end

  test "should update rain_info" do
    patch rain_info_url(@rain_info), params: { rain_info: { city_id: @rain_info.city_id, date: @rain_info.date, value: @rain_info.value } }
    assert_redirected_to rain_info_url(@rain_info)
  end

  test "should destroy rain_info" do
    assert_difference('RainInfo.count', -1) do
      delete rain_info_url(@rain_info)
    end

    assert_redirected_to rain_infos_url
  end
end
