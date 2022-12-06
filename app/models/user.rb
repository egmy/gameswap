# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  description            :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  image                  :string
#  password               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
    validates :username, presence: true
    validates :username, uniqueness: true

    attribute :image, default: -> {'user_icon.png'}
    attribute :description, default: -> {'Welcome to my profile!'}

    has_many(
        :listings,
        class_name: 'Listing',
        foreign_key: 'user_id',
        inverse_of: :user,
        dependent: :destroy
    )

    has_many(
        :offers,
        class_name: 'Offer',
        foreign_key: 'user_id',
        inverse_of: :owner,
        dependent: :destroy
    )

    has_many(
        :authored_ratings,
        class_name:  'Rating',
        foreign_key: 'user_id',
        inverse_of:  :author,
        dependent:   :destroy
    )

    has_many(
        :received_ratings,
        class_name:  'Rating',
        foreign_key: 'user_id',
        inverse_of:  :subject,
        dependent:   :destroy
    )

end
