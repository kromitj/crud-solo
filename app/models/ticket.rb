class Ticket < ActiveRecord::Base
  has_many :attendees
  belongs_to :ticket_level
  belongs_to :concert
  has_one :user, through: :attendees, source: :user
  # Remember to create a migration!
end
