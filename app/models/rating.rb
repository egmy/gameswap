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
        foreign_key: 'author_id',
        inverse_of:  :authored_ratings,
        dependent:   :destroy
    )

    belongs_to(
        :subject,
        class_name:  'User',
        foreign_key: 'subject_id',
        inverse_of:  :received_ratings,
        dependent:   :destroy
    )

    def display
        case rating
            when 1
                return '★☆☆☆☆'
            when 2
                return '★★☆☆☆'
            when 3
                return '★★★☆☆'
            when 4
                return '★★★★☆'
            when 5
                return '★★★★★'
        end
    end

    validates :rating, presence: true

end
