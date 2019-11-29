class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.string :genres
      t.string :name
      t.string :songs
      t.string :name
      t.string :artist_id
      t.string :integer
      t.integer :genre_id

      t.timestamps
    end
  end
end
