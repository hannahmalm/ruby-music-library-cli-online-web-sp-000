 
class Song
attr_accessor :name
@@all = []

def initialize(name)
  @name=name 
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

def self.create
	song = self.new(name)
  song.save 
  song
end 
end 