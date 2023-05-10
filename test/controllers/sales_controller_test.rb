require "test_helper"

class SalesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sales_new_url
    assert_response :success
  end

  test "should get index" do
    get sales_index_url
    assert_response :success
  end

  test "should get show" do
    get sales_show_url
    assert_response :success
  end

  test "should get edit" do
    get sales_edit_url
    assert_response :success
  end
end
