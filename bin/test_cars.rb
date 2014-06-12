require_relative '../lib/used_car.rb'
require 'pry'

testCar = Car.new('Land Rover', 'Range Rover', 2003, 30_000)

testUsedCar = UsedCar.new('Land Rover', 'Range Rover', 2003, 30_000, 10_000)

testDamage = Damage.new("broken mirror", 50)

# damages passed in as array of damage
testDamagedCar = UsedCar.new('Land Rover', 'Range Rover', 2003, 30_000, 10_000, damages: [testDamage])


puts testCar.inspect
puts testUsedCar.inspect
puts testDamagedCar.inspect

binding.pry
