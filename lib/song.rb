

class Song
    attr_accessor :name, :artist, :genre

    @@all = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self


    end

    def self.all
    @@all
    end





end
fuck_this = Song.new("FuckThis", "Rachelle", "pop")
all_good = Song.new("AllGood", "James", "hairMetal")