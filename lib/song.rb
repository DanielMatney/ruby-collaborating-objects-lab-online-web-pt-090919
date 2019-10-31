<<<<<<< HEAD
require 'pry'
class Song
  attr_accessor :name, :artist
=======
class Song
  attr_accessor :name, :artist, :artist_name
>>>>>>> 06c5f569882701503dc32bd84460aa96211e69d4
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    array = filename.split(" - ")
<<<<<<< HEAD
    name = array[0]
    song_name = array[1]
    song = Song.new(song_name)
    song.artist_name = name
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
=======
    song_name = array[1]
    name = array[0]
    song = Song.new(song_name)
>>>>>>> 06c5f569882701503dc32bd84460aa96211e69d4
  end
end