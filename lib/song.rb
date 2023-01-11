require "pry"

class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

    def initialize(name , artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    #    @@count.include? genre ? @@count : @@count << genre

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
        # hash = Hash.new(0)
        # @@genres.each{|key| hash[key] += 1}
        # hash
        @@genre.tally
    end
          
    def self.artist_count 
        # hash = Hash.new(0)
        # @@artists.each{|key| hash[key] += 1}
        # hash
        @@artists.tally
    end
end
