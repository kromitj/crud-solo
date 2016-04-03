class Song < ActiveRecord::Base
  belongs_to :album
  has_one :band, through: :album, source: :band
  # Remember to create a migration!
end
