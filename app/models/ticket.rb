class Ticket < ActiveRecord::Base
  has_many :attendees
  belongs_to :ticket_level
  belongs_to :concert
  # Remember to create a migration!
end
