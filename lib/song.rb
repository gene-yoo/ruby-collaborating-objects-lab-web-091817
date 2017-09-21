class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    new_song = self.new(filename.split(" - ")[1])
    new_song.artist_name = filename.split(" - ")[0]
    new_song.artist.add_song(new_song)
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end
