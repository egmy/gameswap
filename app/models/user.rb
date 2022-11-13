# == Schema Information
#
# Table name: users
#
#  id          :bigint           not null, primary key
#  description :string
#  image       :string
#  password    :string
#  username    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class User < ApplicationRecord
    has_many(
        :listings,
        class_name: 'Listing',
        foreign_key: 'user_id',
        inverse_of: :user,
        dependent: :destroy
    )
    
end
