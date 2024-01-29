require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  test 'login with invalid information' do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: '', password: '' } }
    assert_response :unprocessable_entity
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  test 'nonexist user should fail to auth' do
    post login_url, params: { session: { email: 'dummy@dummy.com', password: 'password' } }
    assert_response :unprocessable_entity
  end

  test 'user who input invalid combination email and password should fail to auth' do
    post login_url, params: { session: { email: 'dummy@dummy.com', password: 'password' } }
    assert_response :unprocessable_entity
  end
end
