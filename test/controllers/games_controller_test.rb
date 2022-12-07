require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest

  test 'should get games' do 
    get games_url
    assert_response :success
  end

  test 'can see the home page' do
    get games_url 
    assert_response :success

    assert_select "h3", "Genre"
  end

  
end
