require 'test_helper'

class RaiditionInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raidition_info = raidition_infos(:one)
  end

  test "should get index" do
    get raidition_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_raidition_info_url
    assert_response :success
  end

  test "should create raidition_info" do
    assert_difference('RaiditionInfo.count') do
      post raidition_infos_url, params: { raidition_info: { city_id: @raidition_info.city_id, date: @raidition_info.date, latidude: @raidition_info.latidude, logitude: @raidition_info.logitude, point_radius: @raidition_info.point_radius, terrain_reflectivity: @raidition_info.terrain_reflectivity } }
    end

    assert_redirected_to raidition_info_url(RaiditionInfo.last)
  end

  test "should show raidition_info" do
    get raidition_info_url(@raidition_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_raidition_info_url(@raidition_info)
    assert_response :success
  end

  test "should update raidition_info" do
    patch raidition_info_url(@raidition_info), params: { raidition_info: { city_id: @raidition_info.city_id, date: @raidition_info.date, latidude: @raidition_info.latidude, logitude: @raidition_info.logitude, point_radius: @raidition_info.point_radius, terrain_reflectivity: @raidition_info.terrain_reflectivity } }
    assert_redirected_to raidition_info_url(@raidition_info)
  end

  test "should destroy raidition_info" do
    assert_difference('RaiditionInfo.count', -1) do
      delete raidition_info_url(@raidition_info)
    end

    assert_redirected_to raidition_infos_url
  end
end
