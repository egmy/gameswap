class AddTagFkColToGames < ActiveRecord::Migration[7.0]
  def change
    add_reference :games, :tag, foreign_key: true
  end
end
