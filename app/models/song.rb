class Song < ActiveRecord::Base
  belongs_to :album
  has_one :band, through: :album, source: :band
  has_many :band_members, through: :band, source: :band_members
  has_many :musicians, through: :band_members, source: :musician
  # Remember to create a migration!
end
