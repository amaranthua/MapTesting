require 'test_helper'

class MyMapControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_map_index_url
    assert_response :success
  end

end
