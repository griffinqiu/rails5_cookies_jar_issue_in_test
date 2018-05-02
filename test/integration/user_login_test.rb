class LoginTest < ActionDispatch::IntegrationTest
  test "should be keep tracking uid after logout" do
    p 'integration test'

    my_cookies = ActionDispatch::TestRequest.new(Rails.application.env_config).cookie_jar
    my_cookies[:site_tracking_id] = 'tracking_id_321'
    my_cookies.signed[:foo_data] = 'foo_data'
    get new_session_path
    post session_path
    assert_equal 'tracking_id_321', cookies[:site_tracking_id]
  end
end
