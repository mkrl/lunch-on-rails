require 'test_helper'

class WorkersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get workers_new_url
    assert_response :success
  end

end
