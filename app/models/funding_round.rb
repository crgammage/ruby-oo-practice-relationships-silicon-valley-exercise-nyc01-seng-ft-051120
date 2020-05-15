


class FundingRound
  attr_reader :type 
  attr_accessor :name 

  @@all = []
def initialize(name, type, investment)
    @name = name 
    @type = type
    @investment = investment
    FundingRound.all << name
end

def startup
  Startup.all.select do |start|
    start.name == self 
  end
end 

def venture_capatilist
  VentureCapatilist.all.select do |venture|
    venture.name == self 
  end
end

def self.all
    @@all
end

def investment
  if @investment.to_f > 0
    @investment.to_f 
  end
end

end


