require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test 'should be keep site_tracking_id after visit login' do
    p 'controller test'
    cookies[:site_tracking_id] = '123'
    get :new
    assert_equal '123', cookies[:site_tracking_id]
  end
end
