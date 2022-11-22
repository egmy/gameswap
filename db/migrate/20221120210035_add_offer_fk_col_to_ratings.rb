class AddOfferFkColToRatings < ActiveRecord::Migration[7.0]
  def change
    add_reference :ratings, :offer, foreign_key: true
  end
end
