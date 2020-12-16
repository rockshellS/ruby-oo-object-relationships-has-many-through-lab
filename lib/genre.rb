require_relative 'song.rb'
require_relative 'artist.rb'
require 'pry'

class Genre
    attr_accessor :name

@@all = []
def initialize(name)
    @name = name
    @@all << self
    end


def self.all
    @@all
end

# # - The `Genre` class needs an instance method, `#songs`, that iterates through
# all songs and finds the songs that belong to that genre.
def songs
    Song.all.find_all do |songs|
        songs.genre = self
    end
end


# - The `Genre` class needs an instance method, `#artists`, that iterates over the
#   genre's collection of songs and collects the artist that owns each song.

def artists
    songs.collect do |song|
        song.artist
    end
end





end

pop = Genre.new("pop")
hairMeatal = Genre.new("hairmetal")


#binding.pry