require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get HelpPage" do
    get :HelpPage
    assert_response :success
  end

end
