require 'test_helper'

class DummyControllerTest < ActionDispatch::IntegrationTest
  test "should get index containing this application's root path" do
    get root_url
    assert_response :success
    assert_match "<samp>/#{app_root_path}</samp>", @response.body
  end

  private

  def app_root_path
    Rails.configuration.action_controller.relative_url_root || ""
  end

end
