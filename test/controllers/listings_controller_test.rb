require "test_helper"

class ListingsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    get new_user_session_url
    sign_in users(:john)
    post user_session_url

  end

  test 'should get index' do 
    game_one = games(:forza)
    get game_url(game_one)
    assert_response :success
  end

  test 'should get home' do
    user = users(:john)
    get my_listings_url(user)
    assert_response :success
  end

end
