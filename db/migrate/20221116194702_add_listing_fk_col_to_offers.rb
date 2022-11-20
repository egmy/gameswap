class AddListingFkColToOffers < ActiveRecord::Migration[7.0]
  def change
    add_reference :offers, :listing, foreign_key: true
  end
end
