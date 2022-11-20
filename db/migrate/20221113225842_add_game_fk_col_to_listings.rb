class AddGameFkColToListings < ActiveRecord::Migration[7.0]
  def change
    add_reference :listings, :game, foreign_key: true
  end
end
