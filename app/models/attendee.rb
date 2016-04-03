class Attendee < ActiveRecord::Base
  belongs_to :user
  belongs_to :ticket
   
  # Remember to create a migration!
end
