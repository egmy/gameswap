class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.text :description
      t.string :condition
      t.string :status

      t.timestamps
    end
  end
end
