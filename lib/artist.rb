require "pry"
class Artist
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self} 
  end

  def new_song(name, genre)
   #binding.pry
    Song.new(name, self, genre)
  end

  def genres
    songs.map {|s| s.genre}
  end
end

0