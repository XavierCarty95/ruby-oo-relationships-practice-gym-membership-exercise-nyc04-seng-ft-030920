class Gym
  attr_accessor :name
  @@all = [] 
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
  
    @@all 
  
  end 
   
  def lifters
   Membership.all.select do |member|
      member.gym  == self
     end
    end 
   def all_lifters 
     lifters.map {|members| members.name }
   end 
    
  def lifters_name 
     all_lifters.map {|members| members.name  }
  end

  def lifter_total
   total =  all_lifters.map {|member| member.lift_total} 
    total.sum 
  end
  def max_total 

    all_lifters.max_by {|member| member.lift_total}
  end
end
