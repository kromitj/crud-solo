class Band < ActiveRecord::Base
  has_many :concerts
  has_many :albums
  has_many :band_members
  has_many :songs, through: :albums, source: :songs
  has_many :musicians, through: :band_members, source: :musician
  has_many :venues_played_at, through: :concerts, source: :venue
  has_many :tickets_sold, through: :concerts, source: :tickets
  has_many :concert_goers, through: :tickets_sold, source: :attendees
  has_many :fans, through: :concert_goers, source: :user
  # Remember to create a migration!
end
