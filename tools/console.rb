# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
la = Gym.new("LA fitness")
planet_fitness = Gym.new("Planet Fitness")
lifter = Lifter.new("Jack" , 50)
lifter2 = Lifter.new("Xavier" , 20)
lifter3 = Lifter.new("Steven" , 30)
black_card = Membership.new("black_card" ,lifter, la )
black_card = Membership.new("black_card" ,lifter2, planet_fitness )
black_card = Membership.new("black_card" ,lifter3, la )
binding.pry

puts "Gains!"
