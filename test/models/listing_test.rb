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
require "test_helper"

class ListingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
