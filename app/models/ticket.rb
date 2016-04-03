class Ticket < ActiveRecord::Base
  has_many :attendees
  # Remember to create a migration!
end
