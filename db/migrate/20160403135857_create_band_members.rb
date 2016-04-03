class CreateBandMembers < ActiveRecord::Migration
  def change
    create_table :band_members do |t|
      t.integer :musician_id
      t.integer :band_id

      t.timestamps(null:false)
    end
  end
end
