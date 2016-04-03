class CreateTicketLevels < ActiveRecord::Migration
  def change
    create_table :ticket_levels do |t|
      t.float :price
      t.integer :available_tickets
      t.integer :level

      t.timestamps
    end
  end
end
