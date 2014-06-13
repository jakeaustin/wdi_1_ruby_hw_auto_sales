require_relative 'used_car'

class CarLot

  attr_accessor :cars
  attr_reader :name

  def initialize(name)
    @name = name
    @cars = []
  end

  def search(search_terms = {})
    matches = @cars
    search_terms.each  do |term, value|
       matches = matches.select { |car| car.send(term)  == value }
    end
    matches
  end

  def lot_value
    val = 0
    @cars.each { |car| val += car.price }
    val
  end

  def sell(car)
  end

  def lot_revenue
  end

end
