class AddAuthorFkColToRatings < ActiveRecord::Migration[7.0]
  def change
    add_reference :authored_ratings, :author, foreign_key: true
  end
end
