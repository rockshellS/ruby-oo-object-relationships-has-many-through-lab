require_relative 'song.rb'
require_relative 'genre.rb'
require 'pry'

class Artist
    attr_accessor :name



@@all = []
def initialize(name)
    @name = name
    @@all << self
end


def self.all
    @@all
end

# - The `Artist` class needs an instance method, `#new_song`, that takes in two
#   arguments, name and genre, and creates a new song. That song should know that
#   it belongs to the artist. ( just creating a new song thru artist)
def new_song(name, genre)
    Song.new(name, self, genre)

end


def songs
    Song.all.select do |songs|
        songs.artist == self
    end
end



# The `Artist` class needs an instance method, `#genres` that iterates over that
# artist's songs and collects the genre of each song.
def genres
    songs.collect do |artist|
        artist.genre
    end
end

    


end



rachelle = Artist.new("RACHELLE")
james = Artist.new("JAMES")
#binding.pry

