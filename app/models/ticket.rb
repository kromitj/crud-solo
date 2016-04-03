class Ticket < ActiveRecord::Base
  has_many :attendees
  belongs_to :ticket_level
  # Remember to create a migration!
end
