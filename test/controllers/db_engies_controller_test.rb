require 'test_helper'

class DbEngiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @db_engy = db_engies(:one)
  end

  test "should get index" do
    get db_engies_url
    assert_response :success
  end

  test "should get new" do
    get new_db_engy_url
    assert_response :success
  end

  test "should create db_engy" do
    assert_difference('DbEngie.count') do
      post db_engies_url, params: { db_engy: {  } }
    end

    assert_redirected_to db_engy_url(DbEngie.last)
  end

  test "should show db_engy" do
    get db_engy_url(@db_engy)
    assert_response :success
  end

  test "should get edit" do
    get edit_db_engy_url(@db_engy)
    assert_response :success
  end

  test "should update db_engy" do
    patch db_engy_url(@db_engy), params: { db_engy: {  } }
    assert_redirected_to db_engy_url(@db_engy)
  end

  test "should destroy db_engy" do
    assert_difference('DbEngie.count', -1) do
      delete db_engy_url(@db_engy)
    end

    assert_redirected_to db_engies_url
  end
end
