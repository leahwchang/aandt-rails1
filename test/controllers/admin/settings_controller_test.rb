require 'test_helper'

class Admin::SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_settings_index_url
    assert_response :success
  end

  test "should get update" do
    get admin_settings_update_url
    assert_response :success
  end

end
