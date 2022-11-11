# == Schema Information
#
# Table name: games
#
#  id          :bigint           not null, primary key
#  description :text
#  image       :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tag_id      :bigint
#
# Indexes
#
#  index_games_on_tag_id  (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (tag_id => tags.id)
#
class Game < ApplicationRecord
    validates :title, :image, :description, presence: true

    belongs_to(
        :tag,
        class_name: 'Tag',
        foreign_key: 'tag_id',
        inverse_of: :games
    )

end
