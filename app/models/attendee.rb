class Attendee < ActiveRecord::Base
  belongs_to :user
  belongs_to :ticket 
  has_one :ticket_level, through: :ticket, source: :ticket_level 
  has_one :concert, through: :ticket, source: :concert
  has_many :venues, through: :concert, source: :venue
  has_one :going_to_see, through: :concert, source: :band
  # Remember to create a migration!
end
