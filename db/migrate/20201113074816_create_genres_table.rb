class CreateGenresTable < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :kind
      t.timestamps
    end

    create_table :wine_genres do |t|
      t.integer :wine_id
      t.integer :genre_id
      t.timestamps
    end
  end
end

