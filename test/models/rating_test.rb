# == Schema Information
#
# Table name: ratings
#
#  id         :bigint           not null, primary key
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  offer_id   :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_ratings_on_offer_id  (offer_id)
#  index_ratings_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (offer_id => offers.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class RatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
