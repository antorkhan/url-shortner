require 'test_helper'

class UrlMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @url_map = url_maps(:one)
  end

  test "should get index" do
    get url_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_url_map_url
    assert_response :success
  end

  test "should create url_map" do
    assert_difference('UrlMap.count') do
      post url_maps_url, params: { url_map: {  } }
    end

    assert_redirected_to url_map_url(UrlMap.last)
  end

  test "should show url_map" do
    get url_map_url(@url_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_url_map_url(@url_map)
    assert_response :success
  end

  test "should update url_map" do
    patch url_map_url(@url_map), params: { url_map: {  } }
    assert_redirected_to url_map_url(@url_map)
  end

  test "should destroy url_map" do
    assert_difference('UrlMap.count', -1) do
      delete url_map_url(@url_map)
    end

    assert_redirected_to url_maps_url
  end
end
