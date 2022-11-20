class AddSubjectFkColToRatings < ActiveRecord::Migration[7.0]
  def change
    add_reference :received_ratings, :subject, foreign_key: true
  end
end
