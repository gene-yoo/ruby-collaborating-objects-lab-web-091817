class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_match = self.all.find {|artist| artist.name == name}
    if artist_match
      artist_match
    else
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end
  end
end
