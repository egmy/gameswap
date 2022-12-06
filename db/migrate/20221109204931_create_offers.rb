class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :description
      t.string :condition
      t.string :status

      t.timestamps
    end
  end
end
