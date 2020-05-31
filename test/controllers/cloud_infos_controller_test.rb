require 'test_helper'

class CloudInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cloud_info = cloud_infos(:one)
  end

  test "should get index" do
    get cloud_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_cloud_info_url
    assert_response :success
  end

  test "should create cloud_info" do
    assert_difference('CloudInfo.count') do
      post cloud_infos_url, params: { cloud_info: { amfstrat: @cloud_info.amfstrat, amftropclear: @cloud_info.amftropclear, amftropcloudy: @cloud_info.amftropcloudy, city_id: @cloud_info.city_id, date: @cloud_info.date, latidude: @cloud_info.latidude, logitude: @cloud_info.logitude } }
    end

    assert_redirected_to cloud_info_url(CloudInfo.last)
  end

  test "should show cloud_info" do
    get cloud_info_url(@cloud_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_cloud_info_url(@cloud_info)
    assert_response :success
  end

  test "should update cloud_info" do
    patch cloud_info_url(@cloud_info), params: { cloud_info: { amfstrat: @cloud_info.amfstrat, amftropclear: @cloud_info.amftropclear, amftropcloudy: @cloud_info.amftropcloudy, city_id: @cloud_info.city_id, date: @cloud_info.date, latidude: @cloud_info.latidude, logitude: @cloud_info.logitude } }
    assert_redirected_to cloud_info_url(@cloud_info)
  end

  test "should destroy cloud_info" do
    assert_difference('CloudInfo.count', -1) do
      delete cloud_info_url(@cloud_info)
    end

    assert_redirected_to cloud_infos_url
  end
end
