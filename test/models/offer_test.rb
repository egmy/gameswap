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
require "test_helper"

class OfferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
