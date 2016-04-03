class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :band_id
      t.date :released

      t.timestamps(null:false)
    end
  end
end
