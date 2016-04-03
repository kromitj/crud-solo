class User < ActiveRecord::Base
  has_many :attendees
  has_many :tickets, through: :attendees
  # Remember to create a migration!
end
