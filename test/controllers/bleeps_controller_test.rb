require 'test_helper'

class BleepsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bleeps_index_url
    assert_response :success
  end

  test "should get new" do
    get bleeps_new_url
    assert_response :success
  end

  test "should get edit" do
    get bleeps_edit_url
    assert_response :success
  end

  test "should get show" do
    get bleeps_show_url
    assert_response :success
  end

end
