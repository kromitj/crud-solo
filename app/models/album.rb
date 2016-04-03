class Album < ActiveRecord::Base
  belongs_to :band
  has_many :songs
  has_many :band_members, through: :band, source: :band_members
  has_many :musicians, through: :band_members, source: :musician
  # Remember to create a migration!
end
