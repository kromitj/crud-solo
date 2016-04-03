class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :ticket_level_id
      t.integer :concert_id
      
      t.timestamps(null:false)
    end
  end
end
