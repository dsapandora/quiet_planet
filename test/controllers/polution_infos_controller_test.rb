require 'test_helper'

class PolutionInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polution_info = polution_infos(:one)
  end

  test "should get index" do
    get polution_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_polution_info_url
    assert_response :success
  end

  test "should create polution_info" do
    assert_difference('PolutionInfo.count') do
      post polution_infos_url, params: { polution_info: { amfstrat: @polution_info.amfstrat, city_id: @polution_info.city_id, date: @polution_info.date, latidude: @polution_info.latidude, logitude: @polution_info.logitude, vcdapstrat: @polution_info.vcdapstrat, vcdaptrop: @polution_info.vcdaptrop } }
    end

    assert_redirected_to polution_info_url(PolutionInfo.last)
  end

  test "should show polution_info" do
    get polution_info_url(@polution_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_polution_info_url(@polution_info)
    assert_response :success
  end

  test "should update polution_info" do
    patch polution_info_url(@polution_info), params: { polution_info: { amfstrat: @polution_info.amfstrat, city_id: @polution_info.city_id, date: @polution_info.date, latidude: @polution_info.latidude, logitude: @polution_info.logitude, vcdapstrat: @polution_info.vcdapstrat, vcdaptrop: @polution_info.vcdaptrop } }
    assert_redirected_to polution_info_url(@polution_info)
  end

  test "should destroy polution_info" do
    assert_difference('PolutionInfo.count', -1) do
      delete polution_info_url(@polution_info)
    end

    assert_redirected_to polution_infos_url
  end
end
