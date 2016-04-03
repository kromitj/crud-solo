class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.integer :capacity

      t.timestamps(nul:false)
    end
  end
end
