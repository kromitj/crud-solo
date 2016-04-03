class User < ActiveRecord::Base
  has_many :attendees
  # Remember to create a migration!
end
