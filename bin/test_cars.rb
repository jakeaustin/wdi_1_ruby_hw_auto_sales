require_relative '../lib/car_lot.rb'
require 'pry'

testCar = Car.new('Land Rover', 'Range Rover', 2003, 30_000)

testUsedCar = UsedCar.new('Land Rover', 'Range Rover', 2003, 30_000, 10_000)

testDamage = Damage.new("broken mirror", 50)
moreDamage = Damage.new("stolen radio", 100)
# damages passed in as array of damage
testDamagedCar = UsedCar.new('Land Rover', 'Range Rover', 2003, 30_000, 10_000, damages: [testDamage])
moreDamagedCar = UsedCar.new('Land Rover', 'Range Rover', 2003, 30_000, 10_000, damages: [testDamage, moreDamage])

testLot = CarLot.new("Honest Jake's Fine Automobiles")

puts
puts testUsedCar.price
puts

# markup represented as percentage
testUsedCar.markup = 0.50
testLot.cars << testCar << testUsedCar << testDamagedCar << moreDamagedCar


puts testCar.inspect
puts testUsedCar.inspect
puts testDamagedCar.inspect
puts moreDamagedCar.inspect
puts testLot.inspect


binding.pry
