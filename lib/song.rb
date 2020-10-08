class Song

attr_accessor :name, :artist, :files

  @@all = []

  def initialize(name)
    @name= name
    @@all << self
  end

  def self.new_by_filename(files)
    @artist_name = files.split(" - ")[0]
    @song_name = files.split(" - ")[1]
    @song = Song.new(song_name)
    @song.artist_name = artist_name
    @song
  end

  def self.all
    @@all
  end

end
