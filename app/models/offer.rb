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
class Offer < ApplicationRecord
  belongs_to(
    :listing,
    class_name: 'Listing',
    foreign_key: 'listing_id',
    inverse_of: :offers
  )

  belongs_to(
    :game,
    class_name: 'Game',
    foreign_key: 'game_id',
    inverse_of: :offers
  )

  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: 'user_id',
    inverse_of: :offers
  )

  has_many(
    :ratings,
    class_name: 'Rating',
    foreign_key: 'offer_id',
    inverse_of: :offer,
    dependent: :destroy
  )

  validates :accepted, presence: false # allow, initialize offers with nil until they're accepted/declined?
  validates :condition, inclusion: { in: %W(New #{"Used-Like New"} #{"Used-Very Good"} Used-Good Used-Acceptable), message: "%{value} is not a valid condition"} # using %W(#{"terms with spaces"}) for clarity, otherwise %w() allows escape
  validates :status, inclusion: { in: %w(active accepted declined), message: "{value} is not a valid status"}
end

