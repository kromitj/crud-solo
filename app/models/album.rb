class Album < ActiveRecord::Base
  belongs_to :band
  has_many :songs
  # Remember to create a migration!
end
