require 'test_helper'

class ProvaidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provaider = provaiders(:one)
  end

  test "should get index" do
    get provaiders_url
    assert_response :success
  end

  test "should get new" do
    get new_provaider_url
    assert_response :success
  end

  test "should create provaider" do
    assert_difference('Provaider.count') do
      post provaiders_url, params: { provaider: {  } }
    end

    assert_redirected_to provaider_url(Provaider.last)
  end

  test "should show provaider" do
    get provaider_url(@provaider)
    assert_response :success
  end

  test "should get edit" do
    get edit_provaider_url(@provaider)
    assert_response :success
  end

  test "should update provaider" do
    patch provaider_url(@provaider), params: { provaider: {  } }
    assert_redirected_to provaider_url(@provaider)
  end

  test "should destroy provaider" do
    assert_difference('Provaider.count', -1) do
      delete provaider_url(@provaider)
    end

    assert_redirected_to provaiders_url
  end
end
