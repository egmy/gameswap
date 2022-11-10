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
#
class Offer < ApplicationRecord
  validates :accepted, presence: false # allow, initialize offers with nil until they're accepted/declined?
  validates :condition, inclusion: { in: %W(New #{"Used-Like New"} #{"Used-Very Good"} Used-Good Used-Acceptable), message: "%{value} is not a valid condition"} # using %W(#{"terms with spaces"}) for clarity, otherwise %w() allows escape
  validates :status, inclusion: { in: %w(active inactive accepted), message: "{value} is not a valid status"}
end

