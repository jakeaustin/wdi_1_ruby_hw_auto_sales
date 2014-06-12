require_relative '../lib/used_car.rb'
require 'pry'
testCar = Car.new('Land Rover', 'Range Rover', 2003, 30_000)
testUsedCar = UsedCar.new('Land Rover', 'Range Rover', 2003, 30_000, 10_000)


puts testCar.inspect
puts testUsedCar.inspect

binding.pry
