class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :concert_title
      t.integer :venue_id
      # Want to have band_id be headliner but not sure how to do it
      t.integer :band_id
      t.date :date

      t.timestamps(null:false)
    end
  end
end
