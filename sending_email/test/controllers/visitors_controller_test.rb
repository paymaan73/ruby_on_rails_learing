require "test_helper"

class VisitorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get visitors_index_url
    assert_response :success
  end

  test "should get contact" do
    get visitors_contact_url
    assert_response :success
  end

  test "should get send_contact" do
    get visitors_send_contact_url
    assert_response :success
  end
end
