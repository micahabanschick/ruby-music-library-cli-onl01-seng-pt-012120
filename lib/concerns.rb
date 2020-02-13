#=begin 
module Concerns
  
  ############### NEW MOD ###############
  
  module IncludeMusicBasics
    
    @@all = []
    
    def initialize(name)
      @name = name 
      self.save
    end 
    
    def save 
      @@all << self
    end 
  
  end
  
  ############### NEW MOD ###############
  
  module ExtendMusicBasics
   
    
    def all
      @@all
    end 
    
    def destroy_all
      @@all = []
    end 
    
    def create(name)
      a = self.new(name)
      a
    end 
  end 
  
  ############### NEW MOD ###############
  
  module Findable 
  end
  
end 
#=end 