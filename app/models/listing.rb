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
#
class Listing < ApplicationRecord
end
