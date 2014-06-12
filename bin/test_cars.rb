require_relative '../lib/car.rb'
require 'pry'
testCar = Car.new('Land Rover', 'Range Rover', 2003, 30_000)

puts testCar.inspect

binding.pry
