class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist
    @artist
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    Song.new(song)
  end

end
