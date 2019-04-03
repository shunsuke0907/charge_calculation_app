require 'test_helper'

class DeliveryHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get delivery_histories_index_url
    assert_response :success
  end

  test "should get new" do
    get delivery_histories_new_url
    assert_response :success
  end

  test "should get edit" do
    get delivery_histories_edit_url
    assert_response :success
  end

end
