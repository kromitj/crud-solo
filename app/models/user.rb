class User < ActiveRecord::Base
  has_many :attendees
  has_many :tickets, through: :attendees
  has_many :concerts, through: :tickets, source: :concert
  has_many :venues, through: :concerts, source: :venue
  has_many :ticket_levels, through: :tickets, source: :ticket_level
  has_many :bands_seen, through: :concerts, source: :band
  # Remember to create a migration!
end
