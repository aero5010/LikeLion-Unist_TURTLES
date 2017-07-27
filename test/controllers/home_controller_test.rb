require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get shelf" do
    get :shelf
    assert_response :success
  end

end
