class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :album_id
      t.float :length

      t.timestamps
    end
  end
end
