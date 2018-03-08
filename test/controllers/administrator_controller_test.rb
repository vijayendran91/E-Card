require 'test_helper'

class AdministratorControllerTest < ActionDispatch::IntegrationTest
  test "should get admin_log_in" do
    get administrator_admin_log_in_url
    assert_response :success
  end

end
