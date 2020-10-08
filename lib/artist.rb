class Artist
  attr_accessor :name :songs

  @@all = []

  def initialize(artist_name)
    @name = artist_name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end


end
