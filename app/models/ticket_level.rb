class TicketLevel < ActiveRecord::Base
  has_many :tickets
  has_many :attendees, through: :tickets, source: :attendees
  has_many :users, through: :attendees, source: :user
  has_many :concerts, through: :tickets, source: :concert
  # Remember to create a migration!
end
