class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string "name"
      t.string "country"
      t.string "area"
      t.date "year"
      t.string "price"
      t.integer "color"
      t.integer "taste"
      t.integer "aroma"
      t.text "comments"
      t.timestamps
    end
  end
end
