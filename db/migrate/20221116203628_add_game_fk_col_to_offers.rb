class AddGameFkColToOffers < ActiveRecord::Migration[7.0]
  def change
    add_reference :offers, :game, foreign_key: true
  end
end
