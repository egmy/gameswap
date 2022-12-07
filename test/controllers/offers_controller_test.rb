require "test_helper"

class OffersControllerTest < ActionDispatch::IntegrationTest

  setup do
    get new_user_session_url
    @user = users(:john)
    sign_in @user
    post user_session_url
  end

  test 'should get (my_offers) index' do
    get my_offers_url(@user)
    assert_response :success
  end

  test 'should get new' do
    listing = listings(:john_listing)
    get new_offer_url(listing)
    assert_response :success
  end

  test 'should get games_index' do
    listing = listings(:john_listing)
    get games_index_url(listing)
    assert_response :success
  end

  test 'should save offer' do
    offer = offers(:tom_offer)
    assert offer.save
  end

  test 'should not save offer with wrong condition' do
    offer = offers(:tom_offer)
    offer.condition = 'Brand New'
    assert_not offer.save
  end

  test 'should not save offer with wrong status' do
    offer = offers(:tom_offer)
    offer.status = 'Delivered'
    assert_not offer.save
  end


end
