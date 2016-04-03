class Venue < ActiveRecord::Base
  has_many :concerts
  has_many :sold_tickets, through: :concerts, source: :tickets
  has_many :attendees, through: :sold_tickets, source: :attendees
  # returns the samething as sold_tickets would like to 
  # get it to return unique instances of the levels
  has_many :ticket_levels, through: :sold_tickets, source: :ticket_level
  has_many :users, through: :attendees, source: :user
  # Remember to create a migration!
end
