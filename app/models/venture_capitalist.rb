

class VentureCapitalist
  attr_accessor :name
   @@all = []
  
   def initialize(name)
    @name = name
    VentureCapitalist.all << self
  end 

  def self.all
    @@all
  end

  def total_worth
    
  end

end
