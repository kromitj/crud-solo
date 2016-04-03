class Attendee < ActiveRecord::Base
  belongs_to :user
  belongs_to :ticket 
  belongs_to :concert
  has_one :ticket_level, through: :ticket, source: :ticket_level 
  # Remember to create a migration!
end
