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
class Listing < ApplicationRecord

    has_many(
        :offers,
        class_name: "Offer",
        foreign_key: "listing_id",
        inverse_of: :listing,
        # dependent: :destroy
    )

    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :listings
    )

    belongs_to(
        :game,
        class_name: 'Game',
        foreign_key: 'game_id',
        inverse_of: :listings
    )
end
