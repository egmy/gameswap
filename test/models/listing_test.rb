# == Schema Information
#
# Table name: listings
#
#  id          :bigint           not null, primary key
#  condition   :string
#  description :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  game_id     :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_listings_on_game_id  (game_id)
#  index_listings_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class ListingTest < ActiveSupport::TestCase

  test 'fixtures are valid' do
    listings.each do |listing|
      assert listing.valid?, listing.errors.full_messages.inspect
    end
  end
  
end
