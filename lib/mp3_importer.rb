class MP3Importer

  attr_accessor :path

  def initialize(filename)
    @path = filename
  end

  def files
    @list_of_filenames ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
  end

  def import
    list_of_filenames.each{|filename| Song.new_by_filename(filename)}
  end

end
