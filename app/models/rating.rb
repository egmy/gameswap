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
class Rating < ApplicationRecord

    belongs_to(
        :offer,
        class_name:  'Offer',
        foreign_key: 'offer_id',
        inverse_of:  :ratings,
        dependent:   :destroy
    )

    belongs_to(
        :author,
        class_name:  'User',
        foreign_key: 'user_id',
        inverse_of:  :authored_ratings,
        dependent:   :destroy
    )

    belongs_to(
        :subject,
        class_name:  'User',
        foreign_key: 'user_id',
        inverse_of:  :received_ratings,
        dependent:   :destroy
    )

    validates :rating, presence: true

end
