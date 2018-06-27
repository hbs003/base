require 'test_helper'

class SeguroControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seguro_index_url
    assert_response :success
  end

  test "should get new" do
    get seguro_new_url
    assert_response :success
  end

  test "should get create" do
    get seguro_create_url
    assert_response :success
  end

  test "should get show" do
    get seguro_show_url
    assert_response :success
  end

  test "should get edit" do
    get seguro_edit_url
    assert_response :success
  end

  test "should get update" do
    get seguro_update_url
    assert_response :success
  end

  test "should get destroy" do
    get seguro_destroy_url
    assert_response :success
  end

end
