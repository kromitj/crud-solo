class User < ActiveRecord::Base
  has_many :attendees
  has_many :tickets, through: :attendees
  has_many :concerts, through: :tickets, source: :concert
  has_many :venues, through: :concerts, source: :venue
  has_many :ticket_levels, through: :tickets, source: :ticket_level
  # Remember to create a migration!
end
