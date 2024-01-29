# frozen_string_literal: true

require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get login_url
    assert_response :success
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
