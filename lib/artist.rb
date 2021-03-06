# require 'pry'
# class Artist
#
#   attr_accessor :name
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#   #  @@all << artist.self
#
#   end
#
#   def self.all
#     @@all
#   end
# end
#
# # binding.pry
class Artist

  attr_accessor :name, :songs
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    song.artist=self
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all #displays the all array
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
      # new_artist.save
      new_artist
    end
  end

  def songs
    Song.all.select do |titles|
      titles.artist == self
    end

  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
