require 'pry'
class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = Dir.glob("#{@path}/*.mp3")
    files.collect {|name| name.split("/")[-1]}
  end
  
  def import
    files.each do|file|
      name = file.split(" - ")[0]
      song = Song.new_by_filename(name)
    end
  end
end