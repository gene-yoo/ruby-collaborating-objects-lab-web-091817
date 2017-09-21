class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir["#{@path}/*.mp3"].collect do |file_path|
      song_name = File.basename file_path
    end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
