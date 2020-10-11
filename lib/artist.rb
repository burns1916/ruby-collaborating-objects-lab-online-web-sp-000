class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(artist_name)
    artist = self.all.find{|artist| artist.name == artist_name}
    if artist
      artist
    else
      artist_new = self.new(artist_name)
      artist_new
      
    end
  end

end
