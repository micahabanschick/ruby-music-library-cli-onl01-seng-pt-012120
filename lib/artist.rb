class Artist

  #include Concerns::IncludeMusicBasics
  #extend Concerns::ExtendMusicBasics
  
  attr_accessor :name, :songs 
    
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def self.destroy_all
    @@all = []
  end 
  
  def self.create(name)
    artist = self.new(name)
    artist.save
    artist 
  end 
  
  def add_song(song)
    song.artist = self if song.artist == nil
    Song.all.any?{|s| s == song && .artist == nil } ? dfvdf : fgdg
    if Song.all.any?{|s| s == song} == true
      Song.all.map{|s| s.artist == self if s == song}
    else 
      Song.all << song 
    end 
    @songs << song
  end 
  
end 

