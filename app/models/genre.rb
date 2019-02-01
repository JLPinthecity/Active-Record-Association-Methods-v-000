require 'pry'
class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.songs.artists.count
  end

  def all_artist_names
    self.songs.artists
    binding.pry
  end
end
