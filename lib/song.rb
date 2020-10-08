class Song

attr_accessor :name, :artist, :files

  @@all = []

  def initialize(name)
    @name= name
    @@all << self
  end

  def self.new_by_filename(file)
    @artist_name = file.split(" - ")[0]
    @song_name = file.split(" - ")[1]
    @song = Song.new(song_name)
    @song.artist_name = artist_name
    @song
  end

  def files
    @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
  end

  def self.all
    @@all
  end

end
