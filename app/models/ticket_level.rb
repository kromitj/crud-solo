class TicketLevel < ActiveRecord::Base
  has_many :tickets
  # Remember to create a migration!
end
