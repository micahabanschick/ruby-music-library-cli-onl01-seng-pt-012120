class Genre 

  #include Concerns::IncludeMusicBasics
  #extend Concerns::ExtendMusicBasics
  
  attr_accessor :name 
    
  @@all = []
  
  def initialize(name)
    @name = name 
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
    genre = self.new(name)
    genre.save
    genre 
  end 
  
end 