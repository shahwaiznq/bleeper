require 'test_helper'

class BleeptagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bleeptags_index_url
    assert_response :success
  end

  test "should get new" do
    get bleeptags_new_url
    assert_response :success
  end

  test "should get edit" do
    get bleeptags_edit_url
    assert_response :success
  end

  test "should get show" do
    get bleeptags_show_url
    assert_response :success
  end

end
