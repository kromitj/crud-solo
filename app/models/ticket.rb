class Ticket < ActiveRecord::Base
  has_many :attendees
  belongs_to :ticket_level
  belongs_to :concert
  has_one :band, through: :concert, source: :band
  has_one :venue, through: :concert, source: :venue
  has_one :user, through: :attendees, source: :user
  # Remember to create a migration!
end
