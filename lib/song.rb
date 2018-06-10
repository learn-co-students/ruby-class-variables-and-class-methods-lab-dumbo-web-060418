require 'pry'
class Song
	@@count = 0;
	@@artists = []
	@@genres = []
	attr_accessor :name, :artist, :genre
	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@artists << self.artist
		@@genres << self.genre
	end

	def self.count
		@@count
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		@@genres.reduce(Hash.new(0)) do |hash,value|
			hash[value] += 1
			hash
		end
	end

	def self.artist_count
		@@artists.reduce(Hash.new(0)) do |hash, value|
			hash[value] += 1
			hash
		end
	end


end
