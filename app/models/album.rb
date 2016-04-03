class Album < ActiveRecord::Base
  belongs_to :band
  # Remember to create a migration!
end
