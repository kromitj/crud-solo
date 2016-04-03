class Attendee < ActiveRecord::Base
  belongs_to :user
  belongs_to :ticket 
  has_one :ticket_level, through: :ticket, source: :ticket_level 
  has_one :concert, through: :ticket, source: :concert
  has_many :venues, through: :concert, source: :venue
  # Remember to create a migration!
end
