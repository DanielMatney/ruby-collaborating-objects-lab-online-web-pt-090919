class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
<<<<<<< HEAD
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    artist = Artist.new(name)
=======
    Artist.all.each do |artist|
      if artist.name == name
        return artist
      else
        artist = Artist.new(name)
        return artist
      end
    end
>>>>>>> 06c5f569882701503dc32bd84460aa96211e69d4
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
  
end