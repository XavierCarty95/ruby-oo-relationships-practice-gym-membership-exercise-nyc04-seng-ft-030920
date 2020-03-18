class Membership
  attr_reader :membership , :lifter , :gym 
  @@all = [] 
  def initialize(membership , lifter , gym)
    @membership = membership 
    @lifter = lifter 
    @gym = gym 
    @@all << self 
  end

  def self.all 
    @@all 
  end 
end
