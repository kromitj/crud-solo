class BandMember < ActiveRecord::Base
  # Are we interested in being able to make assosiations in the join table
  belongs_to :musician
  belongs_to :band
  has_many :albums_made, through: :band, source: :albums
  has_many :songs_made, through: :albums_made, source: :songs
  # Remember to create a migration!
end
