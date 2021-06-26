class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name=name 
    @songs = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all
    self.all.clear
  end 
  
  def save 
    self.class.all << self 
  end 
  
  def self.create(name)
  	artist = self.new(name)
    artist.save 
    artist 
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self
    if name.nil?
      self.artist = Aritst.new(name)
    else 
      self.artist.name = name
    end 
  end 
  
  def genres(song=nil)
    Artist.song.collect do |song| 
    Song.genre
  end 

end 
end 