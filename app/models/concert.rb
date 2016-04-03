class Concert < ActiveRecord::Base
  has_many :attendees
  has_many :tickets
  has_many :users, through: :attendees, source: :user
  # Remember to create a migration!
end
