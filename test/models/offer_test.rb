# == Schema Information
#
# Table name: offers
#
#  id          :bigint           not null, primary key
#  accepted    :boolean
#  condition   :string
#  description :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  game_id     :bigint
#  listing_id  :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_offers_on_game_id     (game_id)
#  index_offers_on_listing_id  (listing_id)
#  index_offers_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (listing_id => listings.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class OfferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
