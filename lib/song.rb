require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |gen|
      @@genre_count.has_key?(gen) ? @@genre_count[gen] += 1 : @@genre_count[gen] = 1
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |ar|
      @@artist_count.has_key?(ar) ? @@artist_count[ar] += 1 : @@artist_count[ar] = 1
    end
    @@artist_count
  end

end
