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
require "test_helper"

class GameTest < ActiveSupport::TestCase
  
  test 'fixtures are valid' do
    games.each do |game|
      assert game.valid?, game.errors.full_messages.inspect
    end
  end

end
