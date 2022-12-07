# == Schema Information
#
# Table name: ratings
#
#  id         :bigint           not null, primary key
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint
#  offer_id   :bigint
#  subject_id :bigint
#
# Indexes
#
#  index_ratings_on_author_id   (author_id)
#  index_ratings_on_offer_id    (offer_id)
#  index_ratings_on_subject_id  (subject_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => users.id)
#  fk_rails_...  (offer_id => offers.id)
#  fk_rails_...  (subject_id => users.id)
#
require "test_helper"

class RatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
