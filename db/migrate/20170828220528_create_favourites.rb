class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :imdb_ranking
      t.references :user_id, index: true, foreign_key: true
      t.references :show_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
