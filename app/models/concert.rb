class Concert < ActiveRecord::Base
  belongs_to :venue
  belongs_to :band
  has_many :tickets
  has_many :attendees, through: :tickets, source: :attendees
  has_many :ticket_levels, through: :tickets, source: :ticket_level
  has_many   :users, through: :attendees, source: :user
  # Remember to create a migration!
end
