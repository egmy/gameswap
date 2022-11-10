# == Schema Information
#
# Table name: tags
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tag < ApplicationRecord

    has_many(
        :games,
        class_name: 'Game',
        foreign_key: 'tag_id',
        inverse_of: :tag
    )
    
end
