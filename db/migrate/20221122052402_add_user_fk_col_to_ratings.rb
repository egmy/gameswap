class AddUserFkColToRatings < ActiveRecord::Migration[7.0]
  def change
    add_reference :ratings, :author, foreign_key: { to_table: :users }
    add_reference :ratings, :subject, foreign_key: { to_table: :users }
  end
end
