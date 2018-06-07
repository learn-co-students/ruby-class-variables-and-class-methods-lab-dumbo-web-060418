class Song

	attr_accessor :title, :artist, :genre

	@@count = 0
	@@catalogue = []
	@@genres = []
	@@artists = []

	def initialize(title, artist, genre)
		@title = title
		@artist = artist
		@genre = genre
		entry = {"Title" => title, "Artist" => artist, "Genre" => genre}
		@@catalogue << entry
		@@count += 1
		@@genres << genre
		@@artists << artist
	end

	def new(title, artist, genre)
	end

	def name
		self.title
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
		@@genres.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
	end

	def self.artist_count
		@@artists.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
	end

end