require 'pry'
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  #  @@all << artist.self

  end

  def self.all
    @@all
  end
end

# binding.pry
