# == Schema Information
#
# Table name: tags
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class TagTest < ActiveSupport::TestCase

  test 'fixtures are valid' do
    tags.each do |tag|
      assert tag.valid?
    end
  end

  
end
