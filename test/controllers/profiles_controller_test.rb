require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest

  setup do
    get new_user_session_url
    @user = users(:john)
    sign_in @user
    post user_session_url
  end

  test 'should get show' do
    get profile_url(@user)
    assert_response :success
  end
  
end
