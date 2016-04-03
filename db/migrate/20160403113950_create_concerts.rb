class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :concert_title
      t.date :date

      t.timestamps(null:false)
    end
  end
end
