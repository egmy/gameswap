require "test_helper"

class ListingsControllerTest < ActionDispatch::IntegrationTest
  
  setup do
    get new_user_session_url
    @user = users(:john)
    sign_in @user
    post user_session_url
  end

  test 'should get index' do 
    game = games(:forza)
    get game_url(game)
    assert_response :success
  end

  test 'should get home' do
    get my_listings_url(@user)
    assert_response :success
  end

  test 'should get new' do
    game = games(:forza)
    get new_game_listing_url(game)
    assert_response :success
  end

  test 'should get edit' do
    listing = listings(:john_listing)
    get edit_listing_url(@user, listing)
    assert_response :success
  end

  test 'should get show' do
    listing = listings(:john_listing)
    get show_listing_url(@user, listing)
    assert_response :success
  end

  test 'should get listing_offers' do
    listing = listings(:john_listing)
    get listing_offers_url(@user, listing)
    assert_response :success
  end

  test 'should save listing' do 
    listing = listings(:john_listing)
    assert listing.save
  end

  test 'should not save save listing with no user' do
    listing = listings(:john_listing)
    listing.user = nil
    assert_not listing.save
  end

end
