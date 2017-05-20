require 'test_helper'

class SwDevelopmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sw_development = sw_developments(:one)
  end

  test "should get index" do
    get sw_developments_url
    assert_response :success
  end

  test "should get new" do
    get new_sw_development_url
    assert_response :success
  end

  test "should create sw_development" do
    assert_difference('SwDevelopment.count') do
      post sw_developments_url, params: { sw_development: {  } }
    end

    assert_redirected_to sw_development_url(SwDevelopment.last)
  end

  test "should show sw_development" do
    get sw_development_url(@sw_development)
    assert_response :success
  end

  test "should get edit" do
    get edit_sw_development_url(@sw_development)
    assert_response :success
  end

  test "should update sw_development" do
    patch sw_development_url(@sw_development), params: { sw_development: {  } }
    assert_redirected_to sw_development_url(@sw_development)
  end

  test "should destroy sw_development" do
    assert_difference('SwDevelopment.count', -1) do
      delete sw_development_url(@sw_development)
    end

    assert_redirected_to sw_developments_url
  end
end
