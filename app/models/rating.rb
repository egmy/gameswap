# == Schema Information
#
# Table name: ratings
#
#  id         :bigint           not null, primary key
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
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
