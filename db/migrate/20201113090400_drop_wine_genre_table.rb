class DropWineGenreTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :wine_genres
    add_column :wines, :genre_id, :integer
  end
end
