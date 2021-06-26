 
class Song
  attr_accessor :name, :artist, :genre 
  @@all = []
  
  def initialize(name,artist=nil, genre=nil)
    @name=name 
    @artist=artist
    @genre=genre
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
  	song = self.new(name)
    song.save 
    song
  end 
  
  def self.find_by_name(name)
    @@all.find {|song| song.name == name}
  end 
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end  
end 