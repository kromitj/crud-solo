class Musician < ActiveRecord::Base
  has_many :band_members
  has_many :bands_in, through: :band_members, source: :band
  has_many :albums, through: :bands_in, source: :albums
  has_many :songs, through: :albums, source: :songs
  
  # lets go from musician all the way to user, thats 6 joins!
  # Remember to create a migration!
end