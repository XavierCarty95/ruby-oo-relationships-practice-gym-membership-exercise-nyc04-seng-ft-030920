class Lifter
  attr_accessor :name, :lift_total
 
  @@all = [] 
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def membership
   Membership.all.select do |member| 
    member.lifter == self 
   end
  end 
  def gym 
    membership.map { |gyms| gyms.gym}
  end 
  def gym_name 
    gym.map { |gyms| gyms.name }
  end
  def lifter_total
    total =  membership.map {|member| member.lift_total} 
     total.sum 
   end



end
